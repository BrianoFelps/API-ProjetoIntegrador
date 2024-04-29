import { db } from '../database/db.js';

export const getElementsP = (_, res) => {
    const sql = "select * from elmproperties";

    db.query(sql, (err, data) => {
        if(err){
            console.log("Erro ao processar a requisição!")
            // Status code, retorna uma coisa se der erro padronizando (tipo erro 404 do google)
            return res.status(500).json(err);
        } else {
            console.log(`Dados dos ElmProperty's obtidos adequadamente!`);
            return res.status(200).json(data);
            // 500 expressa erro, já o 200, sucesso.
        }
    });
}

export const addElementP = (req, res) => {
    const sql = "insert into elmproperties (name, type) values (?, ?)"

    const { name, type } = req.body;

    db.query(sql, [name, type], (err, data) => {
        if(err){
            console.log("Erro ao processar a requisição!")
            return res.status(500).json(err);
        } else {
            console.log(`ElmProperty cadastrado com sucesso!`)
            return res.status(200).json(data);
        }
    });
}

export const updateElementP = (req, res) => {
    const sql = "UPDATE elmproperties SET name = ?, type = ? WHERE id = ?";

    const {id, name, type} = req.body;
    
    db.query(sql, [name, type, id], (err, data) => {
        if(err){
            console.log("Erro ao processar a requisição!");
            return res.status(500).json(err);
        } else {
            console.log(`ElmProperty alterado com sucesso!`)
            return res.status(200).json(data);
            }
    });
}

export const deleteElementP = (req, res) => {
    const sql = "delete from elmproperties where id = ?";

    const {id} = req.query;

    // Nome a partir daqui vai ser transferido ao "?"
    db.query(sql, [id], (err, data) => {
        if(err){
            console.log("Erro ao processar a requisição!")
            // Status code, retorna uma coisa se der erro padronizando (tipo erro 404 do google)
            return res.status(500).json(err);
        } else {
            console.log(`ElmProperty removido adequadamente!`);
            return res.status(200).json(data);
            // 500 expressa erro, 200 sucesso.
        }
    });
}