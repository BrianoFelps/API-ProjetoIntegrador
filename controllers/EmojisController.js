import * as EmojiModel from '../models/Emojis.js';

export const getAllEmoji = async (_, res) => {
    try {
        const emojis = await EmojiModel.getAllEmoji();
        res.status(200).json(emojis);
      } catch (error) {
        console.error('Erro ao obter todos os Emojis:', error);
        res.status(500).json({ error: 'Erro ao obter os Emojis' });
      }
    };

export const getEmojiById = async (req, res) =>{
    const { id } = req.params;
    try {
        const emojis = await EmojiModel.getEmojiById(id);
        if (!emojis) {
          res.status(404).json({ error: 'Emoji não encontrado' });
          return;
        }
        res.status(200).json(emojis);
        } catch (error) {
            console.error('Erro ao obter o Emoji pelo ID:', error);
            res.status(500).json({ error: 'Erro ao obter o Emoji pelo ID' });
        }
}