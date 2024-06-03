import { db } from '../database/db.js';

// Verificação
export const verificarlogin = (req, res) => {
    const { email, senha } = req.body;
    

    const sql = 'select * from usuario where email = ? and senha = ?';

    db.query(sql, [email, senha], (err, data) => {
        if(err) {
            console.log("Erro ao processar a requisição", err);
            return res.status(500).json({ error: "Erro interno do servidor" });
        } else {
            if(data.length > 0) {
                console.log("Login bem-sucedido");
                return res.status(200).json(data);
            } else {
                console.log("Credenciais inválidas");
                return res.status(401).json({ error: "Credenciais inválidas" });
            }
        }
    });
}

// Create
export const addLogin = (req, res) => {
    const { id_usuario } = req.body;
    const sql = 'INSERT INTO login (id_usuario) VALUES (?)';
    db.query(sql, [id_usuario], (err, result) => {
        if (err) {
            console.error('Erro ao adicionar login:', err);
            return res.status(500).json({ error: 'Erro interno do servidor' });
        }
        console.log('Login adicionado com sucesso');
        return res.status(201).json({ message: 'Login adicionado com sucesso' });
    });
};

// Read
export const getLogin = (req, res) => {
    const sql = 'SELECT * FROM login';
    db.query(sql, (err, result) => {
        if (err) {
            console.error('Erro ao obter logins:', err);
            return res.status(500).json({ error: 'Erro interno do servidor' });
        }
        console.log('Logins obtidos com sucesso');
        return res.status(200).json(result);
    });
};

// Update
export const updateLogin = (req, res) => {
    const { id, id_usuario } = req.body;
    const sql = 'UPDATE login SET id_usuario = ? WHERE id = ?';
    db.query(sql, [id_usuario, id], (err, result) => {
        if (err) {
            console.error('Erro ao atualizar login:', err);
            return res.status(500).json({ error: 'Erro interno do servidor' });
        }
        console.log('Login atualizado com sucesso');
        return res.status(200).json({ message: 'Login atualizado com sucesso' });
    });
};

// Delete
export const deleteLogin = (req, res) => {
    const { id } = req.params;
    const sql = 'DELETE FROM login WHERE id = ?';
    db.query(sql, [id], (err, result) => {
        if (err) {
            console.error('Erro ao excluir login:', err);
            return res.status(500).json({ error: 'Erro interno do servidor' });
        }
        console.log('Login excluído com sucesso');
        return res.status(200).json({ message: 'Login excluído com sucesso' });
    });
};