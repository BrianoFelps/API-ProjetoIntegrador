import db from '../database/db.js';

// Função para obter todos os EmojiMenus do banco de dados
export const getAllEmojiMenus = () => {
  return new Promise((resolve, reject) => {
    const sql = 'SELECT * FROM emojimenu';
    db.query(sql, (error, results) => {
      if (error) {
        reject(error);
        return;
      }
      resolve(results);
    });
  });
};

// Função para obter um EmojiMenu pelo ID
export const getEmojiMenuById = (id) => {
  return new Promise((resolve, reject) => {
    const sql = 'SELECT * FROM emojimenu WHERE id = ?';
    db.query(sql, [id], (error, results) => {
      if (error) {
        reject(error);
        return;
      }
      if (results.length === 0) {
        resolve(null); // EmojiMenu não encontrado
        return;
      }
      resolve(results[0]);
    });
  });
};


export const getEmojiByMenuId = async () => {
  return new Promise((resolve, reject) => {
    const sql = 'SELECT em.id as id, e.emoji as emoji FROM emojimenu em JOIN emojis e ON em.id_emoji = e.id order by em.id';
    db.query(sql, (error, results) => {
      if (error) {
        reject(error);
        return;
      }
      resolve(results); // Retorna todos os resultados encontrados
    });
  });
};