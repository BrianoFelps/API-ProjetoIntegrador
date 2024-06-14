// Definir rotas
import express from 'express';
import { getPages, getPageswUserInfo, addPages, updatePages, deletePages } from '../controllers/PagesController.js';
import { getAllEmojiMenus, addEmojiMenu, updateEmojiMenu, deleteEmojiMenu, getEmojiMenuById, getEmojiByMenuId, getEmojiByIdMenu } from '../controllers/EmojiMenuController.js';
import { getAllElements, getElementsWProperties, getCardElements, getElementsById, getInputCardElements, getInputWIdeaElements, getFScards, addElementWuser, updateElement, updateElementsWData, deleteElement } from '../controllers/ElementsController.js';
import { getElementsP, addElementP, updateElementP, deleteElementP } from '../controllers/ElmPropertiesController.js';
import { getUsuarios, getPagesBasedOnUserInfo, addUsuario, updateUsuario, deleteUsuario } from '../controllers/UsuarioController.js';
import { getAllEmoji, getEmojiById } from '../controllers/EmojisController.js';
import { addLogin, deleteLogin, getLogin, updateLogin, verificarlogin } from '../controllers/LoginController.js';
import { verificarcadastro } from '../controllers/SignUpController.js';
const router = express.Router();

// Requisição feita ao tentar acessar a rota
// router.get("/", () => {console.log("Rota de usuários acionada.")});
router.get("/", getPages);
router.get("/usr", getPageswUserInfo);
router.post("/", addPages);
router.put("/", updatePages);
router.delete("/", deletePages);

router.get("/emojis", getAllEmoji);
router.get("/emojis/ID/:id", getEmojiById);

router.get("/emojiMenu", getAllEmojiMenus);
router.post("/emojiMenu", addEmojiMenu);
router.put("/emojiMenu", updateEmojiMenu);
router.delete("/emojiMenu", deleteEmojiMenu);
router.get("/emojiMenu/ID/:id", getEmojiMenuById);
router.get("/emojiMenu/emoji", getEmojiByMenuId);
router.get("/emojiMenu/IDMENU/:id", getEmojiByIdMenu);

router.get("/Elm", getAllElements);
router.get("/Elm/props", getElementsWProperties);
router.get("/Elm/cards", getCardElements);
router.get("/Elm/IC", getInputCardElements);
router.get("/Elm/WI", getInputWIdeaElements);
router.get("/Elm/FS", getFScards);
router.get("/Elm/:id", getElementsById);
router.post("/Elm", addElementWuser);
router.put("/Elm", updateElement);
router.put("/ElmD", updateElementsWData);
router.delete("/Elm", deleteElement);

router.get("/ElmP", getElementsP);
router.post("/ElmP", addElementP);
router.put("/ElmP", updateElementP);
router.delete("/ElmP", deleteElementP);

router.get("/User", getUsuarios);
router.get("/User/:id", getPagesBasedOnUserInfo);
router.post("/User", addUsuario);
router.put("/User", updateUsuario);
router.delete("/User", deleteUsuario);

router.post("/Login", verificarlogin);
router.post("/Login/Adicionar", addLogin);
router.get("/Login", getLogin);
router.put("/Login", updateLogin);
router.delete("/Login", deleteLogin);

router.post("/SignUp", verificarcadastro);

export default router;
