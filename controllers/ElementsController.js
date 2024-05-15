import { db } from '../database/db.js';
import * as ElementsModel  from '../models/Elements.js'


export const getAllElements = async (_, res) => {
    try {
        const Elements = await ElementsModel.getAllElements();
        res.status(200).json(Elements);
      } catch (error) {
        console.error('Erro ao obter todos os Elementos:', error);
        res.status(500).json({ error: 'Erro ao obter os Elementos' });
      }
    };

export const addElement = (req, res) => {
    const sql = "insert into elements (id_property, value) values (?, ?)"

    const { id_property, value } = req.body;

    db.query(sql, [id_property, value], (err, data) => {
        if(err){
            console.log("Erro ao processar a requisição!")
            return res.status(500).json(err);
        } else {
            console.log(`Element cadastrado com sucesso!`)
            return res.status(200).json(data);
        }
    });
}

export const updateElement = (req, res) => {
    const sql = "UPDATE elements SET id_property = ?, value = ? WHERE id = ?";

    const { id_property, value, id } = req.body;
    
    db.query(sql, [id_property, value, id], (err, data) => {
        if(err){
            console.log("Erro ao processar a requisição!");
            return res.status(500).json(err);
        } else {
            console.log(`Element alterado com sucesso!`)
            return res.status(200).json(data);
            }
    });
}

export const deleteElement = (req, res) => {
    const sql = "delete from elements where id = ?";

    const {id} = req.query;

    // Nome a partir daqui vai ser transferido ao "?"
    db.query(sql, [id], (err, data) => {
        if(err){
            console.log("Erro ao processar a requisição!")
            // Status code, retorna uma coisa se der erro padronizando (tipo erro 404 do google)
            return res.status(500).json(err);
        } else {
            console.log(`Element removido adequadamente!`);
            return res.status(200).json(data);
            // 500 expressa erro, 200 sucesso.
        }
    });
}

export const getElementsWProperties = async (_, res) => {
    try{
        const Elements = await ElementsModel.getElementsWProperties();
        if(!Elements){
            res.status(404).json({ error: `Erro ao obter os elementos com as propriedades`});
            return;
        }
        
        res.status(200).json(Elements);    

        } catch (error) {
            console.error('Erro ao obter os elementos com as propriedades:', error);
            res.status(500).json({ error: 'Erro ao obter os elementos com as propriedades' });
        }
}