const mongoose = require('mongoose'),
    {
        toDateTime
    } = require('../helpers'),
    uniqueValidator = require('mongoose-unique-validator')

const schema = new mongoose.Schema({
    project_pair_key: {
        type: String,
        unique: true
    },
    user_id: {
        type: String
    },
    data: [mongoose.Schema.Types.Mixed],
}, {
    timestamps: true,
    strict: false
});

// Apply the uniqueValidator plugin to userSchema.
schema.plugin(uniqueValidator, {
    status: 400
});

// Custom JSON Response
schema.methods.toJSON = function() {
    return {
        id: this._id,
        project_pair_key: this.project_pair_key,
        user_id: this.user_id,
        data: this.data,
        createdAt: toDateTime({
            _d: this.createdAt,
            locale: 'th'
        }),
        updatedAt: toDateTime({
            _d: this.updatedAt,
            locale: 'th'
        })
    }
}

// Custom field before save
schema.pre('save', function(next) {
    next();
});

module.exports = mongoose.model('Images', schema)