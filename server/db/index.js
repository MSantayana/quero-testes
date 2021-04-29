const mysql = require('mysql');
const pool = mysql.createPool({
    password: 'root',
    user: 'root',
    host: 'database-bands-node',
    port: '3306',
    database: 'bands'

});

let bandsdb = {};
bandsdb.all = () =>{
    return new Promise ((resolve, reject) =>{
        pool.query('SELECT * FROM bands;', (err, results) =>{
            if (err){
                return reject(err);
            }

            return resolve(results);
        });

    });
};

module.exports = bandsdb;