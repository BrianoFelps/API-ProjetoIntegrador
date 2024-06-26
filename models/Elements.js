import db from '../database/db.js';

// Função para obter todos os EmojiMenus do banco de dados
export const getAllElements = () => {
  return new Promise((resolve, reject) => {
    const sql = 'SELECT * FROM elements';
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
export const getElementsById = (id) => {
  return new Promise((resolve, reject) => {
    const sql = 'SELECT * FROM elements WHERE id = ?';
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

export const getElementsWProperties = async () => {
  return new Promise((resolve, reject) => {
    const sql = 'SELECT e.id as id, ep.id as property_id, ep.name as category, ep.type as ancestry, e.value as value, e.user_id as user_id FROM elements e JOIN elmproperties ep ON e.id_property = ep.id order by e.id';
    db.query(sql, (error, results) => {
      if (error) {
        reject(error);
        return;
      }
      resolve(results); // Retorna todos os resultados encontrados
    });
  });
};

export const getCardElements = async () => {
  return new Promise((resolve, reject) => {
    const sql = 'SELECT * FROM elements where id_property = 4';
    db.query(sql, (error, results) => {
      if (error) {
        reject(error);
        return;
      }
      resolve(results); // Retorna todos os resultados encontrados
    });
  });
}

export const getInputCardElements = async () =>{
  return new Promise((resolve, reject) => {
    const sql = 'SELECT * FROM elements where id_property = 5';
    db.query(sql, (error, results) => {
      if (error) {
        reject(error);
        return;
      }
      resolve(results); // Retorna todos os resultados encontrados
    });
  })
}

export const getInputWIdeaElements = async () =>{
  return new Promise((resolve, reject) => {
    const sql = 'SELECT * FROM elements where id_property = 6';
    db.query(sql, (error, results) => {
      if (error) {
        reject(error);
        return;
      }
      resolve(results); // Retorna todos os resultados encontrados
    });
  })
}

export const getFScards = async () =>{
  return new Promise((resolve, reject) => {
    const sql = `SELECT id, id_property, value, DATE_FORMAT(data, '%Y-%m-%d') as data, user_id FROM elements where id_property = 7`;
    db.query(sql, (error, results) => {
      if (error) {
        reject(error);
        return;
      }
      resolve(results); // Retorna todos os resultados encontrados
    });
  })
}