const mongoose = require('mongoose');

const chatSchema = new mongoose.Schema(
  {
    creator: {type: String},
    title: { type: String, required: true },
    description: { type: String },
    members: [
      {
        type: String,
        },
    ],
  },
  { timestamps: true }
);

module.exports = mongoose.model('Chat', chatSchema);
