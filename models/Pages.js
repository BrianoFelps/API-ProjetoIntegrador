import db from '../database/db.js';

export const getPagebyUserId = (id) => {
    return new Promise((resolve, reject) => {
      const sql = "select u.id as id, u.page_id, p.name as pagina, p.isFavorited as isfavorited, u.nome as usuario, u.email as email, u.isPremium as ispremium from usuario u join pages p on u.page_id = p.id where u.id = ?";
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