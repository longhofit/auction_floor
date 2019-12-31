const db = require('../utils/db');
module.exports = {
    all: () => db.load('select * from user'),
    single: id => db.load(`select * from user where f_ID=${id}`),
    singleByUsername: async username => {
        const rows = await db.load(`select * from user where f_Username='${username}'`);
        if (rows.length === 0) return null;
        return rows[0];
    },
    add: entity => db.add('user', entity),
    del: id => db.del('user', { f_ID: id }),
    addrequest: entity => db.add('request', entity),
    loadrequest: () => db.load('select * from request'),
    accep_request: id => db.del('request', { UserID: id }),
    updateSeller: id => {
        const condition = { f_ID: id };
        entity = { f_Type: 'seller' };
        console.log(condition, entity);
        return db.patch('user', entity, condition);
    }, 
    patch: entity => {
        const condition = { f_ID: entity.f_ID };
        // console.log(condition,entity);
        delete entity.f_ID;
        // console.log(condition,entity);
        console.log(entity);
        console.log(condition);
        return db.patch('user', entity, condition);
    },
    addFeedback: entity =>{
        db.add('feedback',entity);
    },
    loadPoint: UserID => db.load(`select * from userpoint where userid =${UserID}`),
    loadFeedback: FBtoID => db.load(`select * from feedback where FBtoID=${FBtoID}  `)
};