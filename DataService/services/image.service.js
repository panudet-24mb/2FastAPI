const Image = require('../models/Image')
const config = require('../configs/app')

const methods = {

    scopeSearch(req) {
        $or = []
        if (req.query.project_pair_key) $or.push({
            project_pair_key: {
                $regex: req.query.project_pair_key
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
                    Image.find(_q.query).sort(_q.sort).limit(limit).skip(offset),
                    Image.countDocuments(_q.query)
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
                let obj = await Image.findById(id)
                if (!obj) reject(methods.error('Data Not Found', 404))
                resolve(obj.toJSON())
            } catch (error) {
                reject(error)
            }
        });
    },

    findIdByProjectKey(id) {
        return new Promise(async(resolve, reject) => {
            try {
                let obj = await Image.findOne({
                    project_pair_key: id
                })
                resolve(obj)
            } catch (error) {
                reject(error)

            }

        })
    },

    insert(data) {
        return new Promise(async(resolve, reject) => {
            try {
                id = data.project_pair_key
                let Objid = await this.findIdByProjectKey(id)
                if (!Objid) {
                    const obj = new Image(data)
                    let inserted = await obj.save()
                    resolve(inserted)
                } else {
                    console.log(data.data.Image[0])

                    let Update = await Image.updateOne({
                        _id: Objid
                    }, {
                        $push: {
                            data: data.data.Image[0]
                        }
                    })
                    resolve(Update)
                }

            } catch (error) {
                reject(methods.error(error.message, 400))
            }
        });
    },

    update(id, data) {
        return new Promise(async(resolve, reject) => {
            try {
                let obj = await Image.findById(id)
                if (!obj) reject(methods.error('Data Not Found', 404))
                await Image.updateOne({ _id: id }, data)
                resolve()
            } catch (error) {
                reject(error)
            }
        });
    },

    delete(id) {
        return new Promise(async(resolve, reject) => {
            try {
                let obj = await Image.findById(id)
                if (!obj) reject(methods.error('Data Not Found', 404))
                await Image.deleteOne({ _id: id })
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