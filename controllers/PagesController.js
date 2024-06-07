// As chaves servem a importar a constante do arquivo
import { db } from '../database/db.js';

// O underline é o endpoint, esperando informação, sem necessidade do corpo
// aqui a requisição não precisa de processamento, por isso é omitida
export const getPages = (_, res) => {
    const sql = "select * from pages";

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

export const getPageswUserInfo = (_, res) => {
    const sql = 'select p.id, p.name as pagina, p.id_usuario, u.nome as nome from pages p join usuario u on p.id_usuario = u.id where p.name = "Ponto de equilíbrio";';

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

export const addPages = (req, res) => {
    const { id_elements, id_usuario, id_emojimenu, isFavorited } = req.body;

    const checkIDsQuery = "SELECT * FROM elements WHERE id_elements = ?; SELECT * FROM usuarios WHERE id_usuario = ?; SELECT * FROM emojiMenu WHERE id_emojimenu = ?";

    db.query(checkIDsQuery, [id_elements, id_usuario, id_emojimenu], (err, results) => {
        if(err){
            console.log("Erro ao processar a requisição!");
            return res.status(500).json(err);
        } else {
            // Verificar se todos os IDs são válidos
            if (results[0].length === 0 || results[1].length === 0 || results[2].length === 0) {
                return res.status(400).json({ error: "IDs fornecidos são inválidos." });
            }

            // Se os IDs são válidos, prosseguir com a inserção na tabela pages
            const insertQuery = "INSERT INTO pages (id_elements, id_usuario, id_emojimenu, isFavorited) VALUES (?, ?, ?, ?)";
            db.query(insertQuery, [id_elements, id_usuario, id_emojimenu, isFavorited], (err, data) => {
                if(err){
                    console.log("Erro ao processar a requisição!");
                    return res.status(500).json(err);
                } else {
                    console.log(`Página cadastrada adequadamente!`);
                    return res.status(200).json(data);
                }
            });
        }
    });
}

export const updatePages = (req, res) => {
    const sql = "UPDATE pages SET isFavorited = ? WHERE id = ?";

    const { id, isFavorited } = req.body;

    // Verificar se o ID fornecido é válido
    const checkIDQuery = "SELECT * FROM pages WHERE id = ?";
    
    db.query(checkIDQuery, [id], (err, results) => {
        if(err){
            console.log("Erro ao processar a requisição!");
            return res.status(500).json(err);
        } else {
            // Verificar se o ID é válido
            if (results.length === 0) {
                return res.status(400).json({ error: "ID fornecido é inválido." });
            }

            // Se o ID é válido, prosseguir com a atualização na tabela pages
            db.query(sql, [isFavorited, id], (err, data) => {
                if(err){
                    console.log("Erro ao processar a requisição!");
                    return res.status(500).json(err);
                } else {
                    console.log(`Página atualizada adequadamente!`);
                    return res.status(200).json(data);
                }
            });
        }
    });
}

export const deletePages = (req, res) => {
    const sql = "delete from pages where id = ?";

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