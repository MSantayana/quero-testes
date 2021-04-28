const mysql  = require('mysql');
const pool = mysql.createPool({
    connectionLimit: 50,
    password: 'roota',
    user: 'root',
    database: 'music_artists',
    host: 'localhost',
    port: '3301'
});

let musicdb = {};
musicdb.all = () =>{
    return new Promise((resolve, reject) =>{
        pool.query('SELECT * FROM bands', (err, results) => {
            if(err){
                return reject(err);
            }
            return resolve(results);
        });
    });
};

musicdb.one = (id) =>{
    return new Promise((resolve, reject) =>{
        pool.query('SELECT * FROM bands WHERE id = ?', [id], (err, results) => {
            if(err){
                return reject(err);
            }
            return resolve(results[0]);
        });
    });
};

module.exports = musicdb;