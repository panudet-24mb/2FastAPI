const Message = require('../models/Message');

function sendMessage(userId, chatId, data) {
  console.log(userId)
  const message = new Message(
    Object.assign({}, data, {
      chatId,
      sender: userId,
      content:data.message,
      statusMessageUserId: userId,
    })
  );

  return message
    .save()
    .then((savedMessage) =>
      Promise.resolve({
        success: true,
        message: data.message,
      })
    );
}

function getAllMessages(chatId) {
  return Message.find({ chatId })
    .sort({ createdAt: 1 })
    .exec()
    .then((messages) =>
      Promise.resolve({
        success: true,
        messages,
      })
    );
}

module.exports = {
  sendMessage,
  getAllMessages,
};
