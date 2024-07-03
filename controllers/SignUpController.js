import db from "../database/db.js";

// Fazer Cadastro

    // const sqlUser= [];

export const verificarcadastro = (req, res) => {
    const { name, isFavorited, nome_inteiro, email, password, telefone, isPremium} = req.body;

    db.query('SELECT * FROM usuario WHERE email = ?', [email], async (error, results) => {
        if (error) {
            console.error('Erro ao consultar o banco de dados:', error);
            return res.status(500).json({ message: 'Erro interno do servidor' });
        }

        if (results.length > 0) {
            console.error('o Email ja foi cadastrado, nao entrou no BD');
            return res.status(400).json({ message: 'Email já cadastrado' });
        }
      
        const sqlInsertPage = 'INSERT INTO pages (name, isFavorited) VALUES (?, ?)';

        db.query(sqlInsertPage, [name, isFavorited], 
            (errPage, resultPage) => {
                if(errPage){
                    console.log(`Erro ao criar uma página para o usuário ${errPage}`);
                    return res.status(500).json({ error: "Erro interno de servidor"})
                } else {
                    const id_pagina = resultPage.insertId;

                    console.log(`Valor do id_pagina = ${id_pagina}`)

                    const sqlInsertUser  = 'INSERT INTO usuario (nome_inteiro, email, senha, tel, isPremium, page_id) VALUES (?, ?, ?, ?, ?, ?)';

                    db.query(sqlInsertUser , [nome_inteiro, email, password, telefone, isPremium, id_pagina], (errUser, resultUser) => {
                        if(errUser) {
                            console.log("Erro ao cadastrar usuário", errUser);
                            return res.status(500).json({ error: "Erro interno do servidor" });
                        } else{
                            // const id_usuario = result.insertId;

                            // console.log(`Valor do id_usuario: ${id_usuario}`)

                            // const sql = `insert into pages (name, isFavorited, id_usuario) values (?, ?, ${id_usuario})`;
                            
                            // db.query(sql, [id], (err))

                            console.log("Cadastro feito com sucesso", resultUser);
                            return res.status(201).json({ message: 'Usuário cadastrado com sucesso' });
                        }
                    });
                }
            }
        )

        
    });  
}