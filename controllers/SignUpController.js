import db from "../database/db.js";

// Fazer Cadastro

    // const sqlUser= [];

export const verificarcadastro = (req, res) => {
    const { nomeCompleto, email, password, telefone, isPremium } = req.body;

    db.query('SELECT * FROM usuario WHERE email = ?', [email], async (error, results) => {
        if (error) {
            console.error('Erro ao consultar o banco de dados:', error);
            return res.status(500).json({ message: 'Erro interno do servidor' });
        }

        if (results.length > 0) {
            return res.status(400).json({ message: 'Email já cadastrado' });
        }

    });
      
    const sql = 'INSERT INTO usuario (nome, email, senha, tel, isPremium) VALUES (?, ?, ?, ?, ?)';

    db.query(sql, [nomeCompleto, email, password, telefone, isPremium], (err, result) => {
        if(err) {
            console.log("Erro ao cadastrar usuário", err);
            return res.status(500).json({ error: "Erro interno do servidor" });
        } 

        console.log("Cadastro feito com sucesso", result);
        return res.status(201).json({ message: 'Usuário cadastrado com sucesso' });
    });
}