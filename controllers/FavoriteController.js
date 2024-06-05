import { db } from '../database/db.js';

export const getFavorite = (req, res) => {
    const { userId } = req.params;
    const sql = 'SELECT * FROM pages WHERE id_usuario = ? AND isFavorited = 1';
    db.query(sql, [userId], (err, result) => {
        if(err) {
            console.error('Erro ao obter favoritos:', err);
            return res.status(500).json({ error: 'Erro interno do servidor' });
        }
        console.log('Favoritos obtidos com sucesso');
        return res.status(200).json(result);
    });
};

export const addFavorite = (req, res) => {
    const { userId, pageId } = req.body;
    const sql = 'UPDATE pages SET isFavorited = 1 WHERE id = ? AND id_usuario = ?';
    db.query(sql, [userId, pageId], (err, result) => {
        if(err){
            console.error('Erro ao adicionar favorito:', err);
            return res.status(500).json({ error: 'Erro interno do servidor' });
        }
        console.log('Favorito adicionado com sucesso');
        return res.status(201)({ message: 'Favorito adicionado com sucesso' });
    });
};

export const deleteFavorite = (req, res) => {
    const { userId, pageId } = req.body;
    const sql = 'UPDATE pages SET isFavorited = 0 WHERE id = ? AND id_usuario = ?';
    db.query(sql, [userId, pageId], (err, result) => {
        if(err) {
            console.error('Erro ao remover favorito:', err);
            return res.status(500).json({ error: 'Erro interno do servidor' });
        }
        console.log('Favorito removido com sucesso');
        return res.status(200).json({ message: 'Favorito removido com sucesso' });
    });
};