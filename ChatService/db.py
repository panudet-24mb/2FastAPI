from datetime import datetime

from bson import ObjectId
from pymongo import MongoClient, DESCENDING
from werkzeug.security import generate_password_hash

from user import User

client = MongoClient("mongodb://localhost/chat")

chat_db = client.get_database("ChatDB")
users_collection = chat_db.get_collection("users")
rooms_collection = chat_db.get_collection("rooms")
room_members_collection = chat_db.get_collection("room_members")
messages_collection = chat_db.get_collection("messages")
notification_collection = chat_db.get_collection("notifications")


def save_user(username, email, password):
    password_hash = generate_password_hash(password)
    users_collection.insert_one(
        {"_id": username, "email": email, "password": password_hash}
    )


def get_user(username):
    user_data = users_collection.find_one({"_id": username})
    return (
        User(user_data["_id"], user_data["email"], user_data["password"])
        if user_data
        else None
    )


def save_room(room_name, created_by):
    room_id = rooms_collection.insert_one(
        {"name": room_name, "created_by": created_by, "created_at": datetime.now()}
    ).inserted_id
    add_room_member(room_id, room_name, created_by, created_by, is_room_admin=True)
    return room_id


def update_room(room_id, room_name):
    rooms_collection.update_one(
        {"_id": ObjectId(room_id)}, {"$set": {"name": room_name}}
    )
    room_members_collection.update_many(
        {"_id.room_id": ObjectId(room_id)}, {"$set": {"room_name": room_name}}
    )


def get_room(room_id):
    return rooms_collection.find_one({"_id": ObjectId(room_id)})


def add_room_member(room_id, room_name, username, added_by, is_room_admin=False):
    room_members_collection.insert_one(
        {
            "_id": {"room_id": ObjectId(room_id), "username": username},
            "room_name": room_name,
            "added_by": added_by,
            "notification": {"unseencount": 0, "lastmessagetime": datetime.now()},
            "isActive": False,
            "added_at": datetime.now(),
            "is_room_admin": is_room_admin,
        }
    )


def add_room_members(room_id, room_name, usernames, added_by):
    room_members_collection.insert_many(
        [
            {
                "_id": {"room_id": ObjectId(room_id), "username": username},
                "room_name": room_name,
                "added_by": added_by,
                "notification": {"unseencount": 0, "lastmessagetime": datetime.now()},
                "isActive": False,
                "added_at": datetime.now(),
                "is_room_admin": False,
            }
            for username in usernames
        ]
    )


# StatusBool = True / False
def set_users_status(room_id, username, statusBool):
    room_members_collection.update_one(
        {"_id.room_id": ObjectId(room_id), "_id.username": username},
        {"$set": {"isActive": statusBool}},
    )


def set_users_count_clear(room_id, username):
    room_members_collection.update_one(
        {"_id.room_id": ObjectId(room_id), "_id.username": username},
        {
            "$set": {
                "notification": {"unseencount": 0, "lastmessagetime": datetime.now()}
            }
        },
    )


def set_notification_leave_event(room_id, username):

    room_members_collection.update_one(
        {"_id.room_id": ObjectId(room_id), "_id.username": username},
        {
            "$set": {
                "notification": {"unseencount": 0, "lastmessagetime": datetime.now()}
            }
        },
    )


def remove_room_members(room_id, usernames):
    room_members_collection.delete_many(
        {
            "_id": {
                "$in": [
                    {"room_id": ObjectId(room_id), "username": username}
                    for username in usernames
                ]
            }
        }
    )


def get_room_members(room_id):
    return list(room_members_collection.find({"_id.room_id": ObjectId(room_id)}))


def get_rooms_for_user(username):
    return list(room_members_collection.find({"_id.username": username}))


def is_room_member(room_id, username):
    return room_members_collection.count_documents(
        {"_id": {"room_id": ObjectId(room_id), "username": username}}
    )


def is_room_admin(room_id, username):
    return room_members_collection.count_documents(
        {
            "_id": {"room_id": ObjectId(room_id), "username": username},
            "is_room_admin": True,
        }
    )


def save_message(room_id, text, sender):
    messages_collection.insert_one(
        {
            "room_id": room_id,
            "text": text,
            "sender": sender,
            "created_at": datetime.now(),
        }
    )
    room_members_collection.update(
        {
            "_id.room_id": ObjectId(room_id),
            "_id.username": {"$ne": sender},
            "isActive": {"$ne": True},
        },
        {"$inc": {"notification.unseencount": 1}},
    )


MESSAGE_FETCH_LIMIT = 6


def get_messages(room_id, page=0):
    offset = page * MESSAGE_FETCH_LIMIT
    messages = list(
        messages_collection.find({"room_id": room_id})
        .sort("_id", DESCENDING)
        .limit(MESSAGE_FETCH_LIMIT)
        .skip(offset)
    )
    for message in messages:
        message["created_at"] = message["created_at"].strftime("%d %b, %H:%M")
    return messages[::-1]
