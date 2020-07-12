const mongoose = require('mongoose'),
    { toDateTime } = require('../helpers'),
    uniqueValidator = require('mongoose-unique-validator')

const schema = new mongoose.Schema({
    job_public_id: { type: String, unique: true },
    user_public_id : { type: String },
    data: [mongoose.Schema.Types.Mixed],
    img : [mongoose.Schema.Types.Mixed]
}, {
    timestamps: true,
    strict: false
});

// Apply the uniqueValidator plugin to userSchema.
schema.plugin(uniqueValidator, { status: 400 });

// Custom JSON Response
schema.methods.toJSON = function() {
    return {
        id: this._id,
        job_public_id: this.job_public_id,
        user_public_id: this.user_public_id,
        data: this.data,
        img : this.img,
        createdAt: toDateTime({ _d: this.createdAt, locale: 'th' }),
        updatedAt: toDateTime({ _d: this.updatedAt, locale: 'th' })
    }
}

// Custom field before save
schema.pre('save', function(next) {
    next();
});

module.exports = mongoose.model('Post', schema)