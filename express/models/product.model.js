const db = require('../utils/db');
const config = require('../config/default.json');
module.exports = {
    all: () => db.load('select * from product'),
    allByCat: catId => db.load(`select * from products where CatID=${catId}`),

    countByCat: async catId => {
        const rows = await db.load(`select count(*) as total from products where CatID=${catId}`);
        return rows[0].total;
    },
    pageByCat: (catId, offset) => db.load(`select * from products where CatID=${catId} limit ${config.paginate.limit} offset ${offset}`),
    single: id => db.load(`select * from products where ProID=${id}`),
    add: entity => db.add('products', entity),
    addBidLog: entity => db.add('bidding_log', entity),
    max: async comlumn => {
        const rows = await db.max('products', `${comlumn}`);
        return rows[0].max;
    },
    del: id => db.del('products', { ProID: id }),
    patch: entity => {
        const condition = { ProID: entity.ProID };
        // console.log(condition,entity);
        delete entity.ProID;
        // console.log(condition,entity);
        return db.patch('products', entity, condition);
    },
    // allImg: ProID =>db.load(`select * from proimage as link where ProID = 2018`),
    addImgs: entity => {
        for (var i = 0; i < entity.length; i++) {
            db.add('proimage', entity[i])
        }
    },
    loadImgs: ProID => db.load(`select * from proimage where ProID=${ProID}`),
    allLogByProID: ProID => db.load(`select * from bidding_log where ProID=${ProID}`),
    endTime: ProID => db.load(`select * from endtime where ProID=${ProID}`),
    addwishlist: entity => db.add('wishlist', entity),
    // allByCat: UserID => db.load(`select * from products where CatID=${catId}`),
    //prosFromWish: UserID => db.load(`select DISTINCT  ProID from wishlist where UserID=${UserID}`),
    arrIdFromList: (UserID, table) => db.load(`select DISTINCT  ProID from ${table} where UserID=${UserID}`),
    arrIdContinue: ProID => {
        var inlist = '';
        for (var i = 0; i < ProID.length; i++) {
            inlist += `${ProID[i]},`;
        }
        inlist = inlist.substring(0, inlist.length - 1);
        // const sql = 'select ProID from endtime where (endtime>CURRENT_TIMESTAMP) and (ProID in (' + inlist + ') )';
        const sql = `select ProID from endtime where (endtime>CURRENT_TIMESTAMP) and (ProID in (${inlist}))`;
        console.log(sql);
        return db.load(sql);
    },
    arrIdEnd: ProID => {
        var inlist = '';
        for (var i = 0; i < ProID.length; i++) {
            inlist += `${ProID[i]},`;
        }
        inlist = inlist.substring(0, inlist.length - 1);
        // const sql = 'select ProID from endtime where (endtime<CURRENT_TIMESTAMP) and (ProID in (' + inlist + ') )';
        const sql = `select ProID from endtime where (endtime<CURRENT_TIMESTAMP) and (ProID in (${inlist}))`;
        console.log(sql);
        return db.load(sql);
    },
    allByArrID: ProID => {
        var inlist = '';
        for (var i = 0; i < ProID.length; i++) {
            inlist += `${ProID[i]},`;
        }
        inlist = inlist.substring(0, inlist.length - 1);
        //const sql = 'SELECT * FROM products WHERE ProID in (' + inlist + ')';
        const sql = `SELECT * FROM products WHERE ProID in (${inlist})`;
        console.log(sql);
        return db.load(sql);
    },
    allByArrIDWon: (ProID, UserID) => {
        var inlist = '';
        for (var i = 0; i < ProID.length; i++) {
            inlist += `${ProID[i]},`;
        }
        inlist = inlist.substring(0, inlist.length - 1);
        const sql = `SELECT * FROM products WHERE ProID in (${inlist}) and WinerID=${UserID}`;
        console.log(sql);
        return db.load(sql);
    },
    allContinue: () => db.load(`select ProID from endtime where CURRENT_TIMESTAMP < endtime`),
    allMinuteAgo: minutes => db.load(`select ProID from products where  (DATE_ADD(CreatedDTime, INTERVAL ${minutes} MINUTE)>CURRENT_TIMESTAMP)`),
    allEnd: () => db.load(`select ProID from endtime where CURRENT_TIMESTAMP > endtime`),
    allByArrIDBidding: (ProID, UserID) => {
        var inlist = '';
        for (var i = 0; i < ProID.length; i++) {
            inlist += `${ProID[i]},`;
        }
        inlist = inlist.substring(0, inlist.length - 1);
        const sql = `SELECT * FROM products WHERE SellerID=${UserID} and ProID in (${inlist})`;
        console.log(sql);
        return db.load(sql);
    },
    allProIBidded: (ProID, UserID) => {
        var inlist = '';
        for (var i = 0; i < ProID.length; i++) {
            inlist += `${ProID[i]},`;
        }
        inlist = inlist.substring(0, inlist.length - 1);
        const sql = `SELECT * FROM products WHERE (SellerID = ${UserID}) and (winerid is not null) and (proid in (${inlist}))`;
        console.log(sql);
        return db.load(sql);

    },
    addAutoBid: entity => db.add('autobid', entity),
    loadAutobid: ProID => db.load(`select * from autobid where ProID=${ProID}`),
    addBannedList: entity => {
        console.log(`   ${entity}    addBannedList `);
        db.add(`bannedlist`, entity)
    },
    isInBanBidList: (ProID, UserID) => db.load(`select * from bannedlist where ProID=${ProID} and UserID=${UserID} `),
    delBidLog: (ProID, UserID) => {
        console.log(` ${ProID} ${UserID} delBidLog `);
        db.del('bidding_log', { ProID: ProID, UserID: UserID })
    },
    loadWinWithPrice: (ProID) => db.load(`select * from bidding_log where Price=(SELECT max(price) FROM bidding_log where  proid=${ProID})
    `),
    coutBid: (ProID) => db.load(`select count(*) from products where ProID=${ProID}`)
}
// var inlist = '';
// for (var i = 0; i < ProID.length; i++) {
//     inlist += `${ProID[i]},`;
// }
// inlist = inlist.substring(0, inlist.length - 1);
// const sql = 'SELECT * FROM products WHERE ProID in (' + inlist + ')';
// console.log(sql);
// db.load(sql);
// UserID => db.load(`select ProID from wishlist where UserID=${UserID}`)