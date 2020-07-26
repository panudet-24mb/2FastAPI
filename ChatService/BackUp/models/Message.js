const mongoose = require('mongoose');

const ignoreEmpty = (val) => (val !== '' ? val : undefined);

const messageSchema = new mongoose.Schema(
  {

    chatId: {
      type: mongoose.Schema.Types.ObjectId,
      ref: 'Chat',
    },
    sender:String,
    content: String,
    statusMessage: Boolean,
  },
  { timestamps: true }
);

module.exports = mongoose.model('Message', messageSchema);
