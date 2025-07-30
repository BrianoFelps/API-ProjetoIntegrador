import mysql from 'mysql2';
import dotenv from 'dotenv';

dotenv.config();

// Dinamismo da conexão ao bd
export const db = mysql.createConnection({
    // host: "localhost",
    // port: 3306,
    // user: "root",
    // password: "admin",
    // database: "ProjetoIntegradorWEB"
    host: process.env.MYSQL_HOST,
    port: process.env.MYSQL_PORT,
    user: process.env.MYSQL_USER,
    password: process.env.MYSQL_ROOT_PASSWORD,
    database: process.env.MYSQL_DATABASE

})

db.connect((err) => {
    if (err) {
        console.error(`Erro ao se conectar ao banco de dados (${process.env.MYSQLDATABASE}): ${err}`);
    } else {
        console.log(`Conexão bem-sucedida ao banco de dados MySQL (${process.env.MYSQLDATABASE})`);
        if (process.env.MYSQLHOST === 'localhost') {
            console.log(`Usando servidor local`);
        }
    }
});

export default db;
