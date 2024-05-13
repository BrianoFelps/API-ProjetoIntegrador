import db from "../database/db";

// Fazer Cadastro
export const verificarcadastro = (req, res) => {
    const { nomeCompleto, email, password } = req.body;

    const sql = 'insert into usuario (nome, email, senha) VALUES (?, ?, ?)';

    db.query(sql, [nomeCompleto, email, password], (err, data) => {
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