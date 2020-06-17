"""
dependencies:
flask = "^1.1.1"
flask_marshmallow = "^0.10.1"
flask_sqlalchemy = "^2.4.1"
marshmallow-sqlalchemy = "^0.21.0"
"""

import sys

from flask import Flask, jsonify
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow
from marshmallow import fields  # TODO: add this

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///database.db'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db = SQLAlchemy(app)
ma = Marshmallow(app)


class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(50))


class Reward(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    reward_name = db.Column(db.String(250))
    user_id = db.Column(db.Integer, db.ForeignKey('user.id'))
    user = db.relationship('User', backref='rewards')


class RewardSchema(ma.SQLAlchemyAutoSchema):
    class Meta:
        model = Reward


class UserSchema(ma.SQLAlchemyAutoSchema):
    class Meta:
        model = User

    rewards = fields.Nested(RewardSchema, many=True,
                            only=['id', 'reward_name'])  # TODO: and add this


@app.route('/')
def index():
    users = User.query.all()
    user_schema = UserSchema(many=True)
    output = user_schema.dump(users)
    return jsonify({'user': output})


if __name__ == '__main__':
    # uncomment to init db
    #
    # db.create_all()
    # user = User(name="Vasya")
    # reward = Reward(reward_name="an hero", user=user)
    # db.session.add(reward)
    # db.session.commit()

    app.run(debug=True)



# from flask import Flask, jsonify
# from flask_sqlalchemy import SQLAlchemy 
# from flask_marshmallow import Marshmallow
# from marshmallow import fields

# app = Flask(__name__)
# app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///database.db'

# db = SQLAlchemy(app)
# ma = Marshmallow(app)

# class User(db.Model):
#     id = db.Column(db.Integer, primary_key=True)
#     name = db.Column(db.String(50))

# class Reward(db.Model):
#     id = db.Column(db.Integer, primary_key=True)
#     reward_name = db.Column(db.String(250))
#     user_id = db.Column(db.Integer, db.ForeignKey('user.id'))
#     user = db.relationship('User', backref='rewards')

# class UserSchema(ma.SQLAlchemyAutoSchema):
#     name = fields.String()
#     class Meta:
#         model = User 

# class RewardSchema(ma.SQLAlchemyAutoSchema):
#     user = fields.Nested('UserSchema', many=True)
#     class Meta:
#         model = Reward

# @app.route('/')
# def index():
#     users = User.query.all()
#     user_schema = UserSchema(many=True)
#     output = user_schema.dump(users)
#     return jsonify({'user' : output})

# if __name__ == '__main__':
#     app.run(debug=True)