import db from '../database/db.js';

export const getAllEmoji = () => {
  return new Promise((resolve, reject) => {
    const sql = 'SELECT * FROM emojis';
    db.query(sql, (error, results) => {
      if (error) {
        reject(error);
        return;
      }
      resolve(results);
    });
  });
};

export const getEmojiById = (id) => {
  return new Promise((resolve, reject) => {
    const sql = 'SELECT * FROM emojis WHERE id = ?';
    db.query(sql, [id], (error, results) => {
      if (error) {
        reject(error);
        return;
      }
      if (results.length === 0) {
        resolve(null);
        return;
      }
      resolve(results[0]);
    });
  });
};