// As chaves servem a importar a constante do arquivo
import { db } from '../database/db.js';
import * as EmojiMenuModel from '../models/EmojiMenu.js';

// O underline é o endpoint, esperando informação, sem necessidade do corpo
// aqui a requisição não precisa de processamento, por isso é omitida
export const getAllEmojiMenus = async (_, res) => {
    try {
        const emojiMenus = await EmojiMenuModel.getAllEmojiMenus();
        res.status(200).json(emojiMenus);
      } catch (error) {
        console.error('Erro ao obter todos os EmojiMenus:', error);
        res.status(500).json({ error: 'Erro ao obter os EmojiMenus' });
      }
    };

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

// Função para buscar um EmojiMenu pelo id
export const getEmojiMenuById = async (req, res) => {
    const { id } = req.params;
    try {
      const emojiMenu = await EmojiMenuModel.getEmojiMenuById(id);
      if (!emojiMenu) {
        res.status(404).json({ error: 'EmojiMenu não encontrado' });
        return;
      }
      res.status(200).json(emojiMenu);
    } catch (error) {
      console.error('Erro ao obter o EmojiMenu pelo ID:', error);
      res.status(500).json({ error: 'Erro ao obter o EmojiMenu pelo ID' });
    }
  };