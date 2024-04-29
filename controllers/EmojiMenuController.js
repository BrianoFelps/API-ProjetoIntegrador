// As chaves servem a importar a constante do arquivo
import { db } from '../database/db.js';

// O underline é o endpoint, esperando informação, sem necessidade do corpo
// aqui a requisição não precisa de processamento, por isso é omitida
export const getEmojiMenu = (_, res) => {
    const sql = "select * from emojimenu";

    db.query(sql, (err, data) => {
        if(err){
            console.log("Erro ao processar a requisição!")
            // Status code, retorna uma coisa se der erro padronizando (tipo erro 404 do google)
            return res.status(500).json(err);
        } else {
            console.log(`Dados dos EmojiMenu's obtidos adequadamente!`);
            return res.status(200).json(data);
            // 500 expressa erro, já o 200, sucesso.
        }
    });
}

export const addEmojiMenu = (req, res) => {
    const sql = "insert into emojimenu (id_emoji) values (?)"

    const { id_emoji } = req.body;

    db.query(sql, [id_emoji], (err, data) => {
        if(err){
            console.log("Erro ao processar a requisição!")
            return res.status(500).json(err);
        } else {
            console.log(`EmojiMenu cadastrado com sucesso!`)
            return res.status(200).json(data);
        }
    });
}

export const updateEmojiMenu = (req, res) => {
    const sql = "UPDATE emojimenu SET id_emoji = ? WHERE id = ?";

    const { id, id_emoji } = req.body;
    
    db.query(sql, [id_emoji, id], (err, data) => {
        if(err){
            console.log("Erro ao processar a requisição!");
            return res.status(500).json(err);
        } else {
            console.log(`EmojiMenu alterado com sucesso!`)
            return res.status(200).json(data);
            }
    });
}

export const deleteEmojiMenu = (req, res) => {
    const sql = "delete from emojimenu where id = ?";

    const {id} = req.query;

    // Nome a partir daqui vai ser transferido ao "?"
    db.query(sql, [id], (err, data) => {
        if(err){
            console.log("Erro ao processar a requisição!")
            // Status code, retorna uma coisa se der erro padronizando (tipo erro 404 do google)
            return res.status(500).json(err);
        } else {
            console.log(`EmojiMenu removido adequadamente!`);
            return res.status(200).json(data);
            // 500 expressa erro, 200 sucesso.
        }
    });
}