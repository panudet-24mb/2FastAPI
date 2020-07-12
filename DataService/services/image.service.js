const Post = require('../models/Post')
const config = require('../configs/app')

const methods = {

    scopeSearch(req) {
        $or = []
        if (req.query.job_public_id) $or.push({
            job_public_id: {
                $regex: req.query.job_public_id
            }
        })

        let query = $or.length > 0 ? { $or } : {}
        let sort = { createdAt: -1 }
        if (req.query.orderByField && req.query.orderBy)
            sort = {
                [req.query.orderByField]: req.query.orderBy.toLowerCase() == 'desc' ? -1 : 1
            }
        return { query: query, sort: sort }
    },

    find(req) {
        let limit = +(req.query.size || config.pageLimit);
        let offset = +(limit * ((req.query.page || 1) - 1));
        let _q = methods.scopeSearch(req)

        return new Promise(async(resolve, reject) => {
            try {
                Promise.all([
                    Post.find(_q.query).sort(_q.sort).limit(limit).skip(offset),
                    Post.countDocuments(_q.query)
                ]).then((result) => {
                    let rows = result[0]
                    let count = result[1]
                    resolve({
                        rows: rows,
                        total: count,
                        lastPage: Math.ceil(count / limit),
                        currPage: +req.query.page || 1
                    })
                }).catch((error) => {
                    reject(error)
                })
            } catch (error) {
                reject(error)
            }
        });
    },

    findById(id) {
        return new Promise(async(resolve, reject) => {
            try {
                let obj = await Post.findById(id)
                if (!obj) reject(methods.error('Data Not Found', 404))
                resolve(obj.toJSON())
            } catch (error) {
                reject(error)
            }
        });
    },

    findIdByJobPublicId(id) {
        return new Promise(async(resolve, reject) => {
            try {
                let obj = await Post.findOne({
                    job_public_id: id
                })
                resolve(obj)
            } catch (error) {
                reject(error)

            }

        })
    },

    insert(data , Id) {
        return new Promise(async(resolve, reject) => {
            try {
                let Objid = await this.findIdByJobPublicId(Id)
                if (!Objid) {
                    let JsonObj = {}
                    let keyId = 'job_public_id'
                    let keyImg = 'img'
                    JsonObj[keyId] = Id
                    JsonObj[keyImg] = data
                    const obj = new Post(JsonObj)
                    let inserted = await obj.save()
                    resolve(inserted)
                } else {
                   
                    let Update = await Post.updateOne({
                        _id: Objid
                    }, {
                        $push: {
                            img: data
                        }
                    })
                    resolve(data)
                }

            } catch (error) {
                reject(methods.error(error.message, 400))
            }
        });
    },

    update(id, data) {
        return new Promise(async(resolve, reject) => {
            try {
                let Objid = await this.findIdByJobPublicId(Id)
                let obj = await Post.findById(Objid)
                if (!obj) reject(methods.error('Data Not Found', 404))
                await Post.updateOne({ _id: id }, data)
                resolve()
            } catch (error) {
                reject(error)
            }
        });
    },

    delete(id) {
        return new Promise(async(resolve, reject) => {
            try {
                let Objid = await this.findIdByJobPublicId(Id)
                let obj = await Post.findById(Objid)
                if (!obj) reject(methods.error('Data Not Found', 404))
                await Post.deleteOne({ _id: id })
                resolve()
            } catch (error) {
                reject(error)
            }
        });
    },

    error(msg, status = 500) {
        let error = new Error(msg)
        error.status = status
        return error;
    }

}

module.exports = {...methods }