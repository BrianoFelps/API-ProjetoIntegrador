import mysql from 'mysql2';
import dotenv from 'dotenv';

dotenv.config();

// Dinamismo da conexão ao bd
export const db = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "admin",
    database: "projetointegradorweb"
    // host: process.env.MYSQLHOST,
    // port: process.env.MYSQLPORT,
    // user: process.env.MYSQLUSER,
    // password: process.env.MYSQLPASSWORD,
    // database: process.env.MYSQLDATABASE
})

db.connect((err) => {
    if(err){
        console.log(`Erro de conexão ao banco de dados: ${err}`);
        return;
    }

    console.log(`Conexão bem-sucedida!`);
})

// db.then(() => {
//     console.log(`Conexão bem-sucedida ao banco de dados MySQL (${process.env.MYSQLDATABASE})`)
//     if(process.env.MYSQLHOST === 'localhost'){
//         console.log(`Usando servidor local`);
        
//     }
// }).catch(err =>{
//     console.log(`Erro ao se conectar ao banco de dados (${process.env.MYSQLDATABASE}): ${err}`)
// });

export default db;
