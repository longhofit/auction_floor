const db=require('../utils/db');
const config=require('../config/default.json');
module.exports={
    all:()=> db.load('select * from product'),
    allByCat: catId => db.load(`select * from products where CatID=${catId}`),

    countByCat: async catId => {
        const rows = await db.load(`select count(*) as total from products where CatID=${catId}`);
        return rows[0].total;
    },
    pageByCat: (catId,offset) => db.load(`select * from products where CatID=${catId} limit ${config.paginate.limit} offset ${offset}`),
    single: id => db.load(`select * from products where ProID=${id}`),
    add: entity => db.add('products',entity),
    addBidLog : entity => db.add('bidding_log',entity),
    max: async comlumn => {
       const rows= await db.max('products',`${comlumn}`);
       return rows[0].max;
    },
    del: id => db.del('products',{ProID: id}),
    patch: entity =>{
        const condition={ ProID: entity.ProID};
       // console.log(condition,entity);
        delete entity.ProID;
       // console.log(condition,entity);
       return db.patch('products',entity,condition);
    },
   // allImg: ProID =>db.load(`select * from proimage as link where ProID = 2018`),
    addImgs: entity => {
        for (var i=0;i<entity.length;i++)
        {
            db.add('proimage',entity[i])
        }
    },
    loadImgs: ProID => db.load(`select * from proimage where ProID=${ProID}`),
    allLogByProID: ProID => db.load (`select * from bidding_log where ProID=${ProID}`),
    endTime : ProID=> db.load(`select * from endtime where ProID=${ProID}`)
   
}