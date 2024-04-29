// Definir rotas
import express from 'express';
import { getPages, addPages, updatePages, deletePages } from '../controllers/PagesController.js';
import { getEmojiMenu, addEmojiMenu, updateEmojiMenu, deleteEmojiMenu } from '../controllers/EmojiMenuController.js';
import { getElements, addElement, updateElement, deleteElement } from '../controllers/ElementsController.js';
import { getElementsP, addElementP, updateElementP, deleteElementP } from '../controllers/ElmPropertiesController.js';
import { getUsuarios, addUsuario, updateUsuario, deleteUsuario } from '../controllers/UsuarioController.js';
const router = express.Router();

// Requisição feita ao tentar acessar a rota
// router.get("/", () => {console.log("Rota de usuários acionada.")});
router.get("/", getPages);
router.post("/", addPages);
router.put("/", updatePages);
router.delete("/", deletePages);

router.get("/emojiMenus", getEmojiMenu);
router.post("/emojiMenus", addEmojiMenu);
router.put("/emojiMenus", updateEmojiMenu);
router.delete("/emojiMenus", deleteEmojiMenu);

router.get("/Elm", getElements);
router.post("/Elm", addElement);
router.put("/Elm", updateElement);
router.delete("/Elm", deleteElement);

router.get("/ElmP", getElementsP);
router.post("/ElmP", addElementP);
router.put("/ElmP", updateElementP);
router.delete("/ElmP", deleteElementP);

router.get("/User", getUsuarios);
router.post("/User", addUsuario);
router.put("/User", updateUsuario);
router.delete("/User", deleteUsuario);

export default router;
