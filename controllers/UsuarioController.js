import { db } from '../database/db.js';

export const getUsuarios = (_, res) => {
    const sql = "select * from usuario";

    db.query(sql, (err, data) => {
        if(err){
            console.log("Erro ao processar a requisição!")
            // Status code, retorna uma coisa se der erro padronizando (tipo erro 404 do google)
            return res.status(500).json(err);
        } else {
            console.log(`Dados dos usuários obtidos adequadamente!`);
            return res.status(200).json(data);
            // 500 expressa erro, já o 200, sucesso.
        }
    });
}

export const addUsuario = (req, res) => {
    const sql = "insert into usuario (nome, senha, email, tel, isPremium) values (?, ?, ?, ?, ?)"

    const { nome, senha, email, tel, isPremium} = req.body;

    isPremium = false;

    db.query(sql, [nome, senha, email, tel, isPremium], (err, data) => {
        if(err){
            console.log("Erro ao processar a requisição!")
            return res.status(500).json(err);
        } else {
            console.log(`Usuário cadastrado com sucesso!`)
            return res.status(200).json(data);
        }
    });
}

export const updateUsuario = (req, res) => {
    const sql = "UPDATE usuario SET nome = ?, senha = ?, email = ?, tel = ?, isPremium = ? WHERE id = ?";

    const { nome, senha, email, tel, isPremium, id } = req.body;
    
    db.query(sql, [nome, senha, email, tel, isPremium, id], (err, data) => {
        if(err){
            console.log("Erro ao processar a requisição!");
            return res.status(500).json(err);
        } else {
            console.log(`Usuário alterado com sucesso!`)
            return res.status(200).json(data);
            }
    });
}

export const deleteUsuario = (req, res) => {
    const sql = "delete from usuario where id = ?";

    const {id} = req.query;

    // Nome a partir daqui vai ser transferido ao "?"
    db.query(sql, [id], (err, data) => {
        if(err){
            console.log("Erro ao processar a requisição!")
            // Status code, retorna uma coisa se der erro padronizando (tipo erro 404 do google)
            return res.status(500).json(err);
        } else {
            console.log(`Usuário removido adequadamente!`);
            return res.status(200).json(data);
            // 500 expressa erro, 200 sucesso.
        }
    });
}