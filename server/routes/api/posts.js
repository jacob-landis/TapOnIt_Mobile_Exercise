const express = require('express');
const router = express.Router();

const sql = require('mssql');
const db = new sql.ConnectionPool({
    server: "DESKTOP-EER3IJ8\\LANDISSQL",
    database: "TapOnItMobile",
    user: "landisj",
    password: "8u5Aew"
});

// gets products
router.get('/', (req, res) => { 
    getProducts(products => res.send(products));
})

// updates likes
router.post('/', (req, res) => {
    updateLikes(req.body.id, req.body.value);
})



function updateLikes(id, value) {
    query(`SELECT likes FROM Products WHERE id = ${id}`, res => {
        let likes = res.recordset[0].likes + (value ? 1 : -1);
        if (likes >= 0) query(`UPDATE Products SET likes = ${likes} WHERE id = ${id}`);
    });
}

function getProducts(callback) {
    query('SELECT * FROM Products', products => callback(products));
}



function query(queryString, callback) {
    const client = db.connect(err => { 
        if (err) console.log(err);

        client.query(queryString, (err, results) => {
            if (err) {
                db.close();
                return console.log(err);
            }

            db.close();
            if (callback) callback(results);
        });
    });
}

module.exports = router;