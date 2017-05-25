/*
Navicat MySQL Data Transfer

Source Server         : Mysql-Xampp
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : marketplace

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-05-25 00:42:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for produtos
-- ----------------------------
DROP TABLE IF EXISTS `produtos`;
CREATE TABLE `produtos` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`nome`  varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`preco`  double NULL DEFAULT NULL ,
`vendedor`  int(11) NULL DEFAULT NULL ,
`descricao`  text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL ,
`vendido`  tinyint(4) NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_general_ci
AUTO_INCREMENT=8

;

-- ----------------------------
-- Records of produtos
-- ----------------------------
BEGIN;
INSERT INTO `produtos` VALUES ('1', 'Notebook', '2400', '3', 'Um Notebook muito rapido', '1'), ('2', 'Fone', '20', '4', 'Um fone bom', '1'), ('3', 'HD de 7000 TB', '70000', '2', 'Um HD para guardar o mundo todo', '1'), ('4', 'Bola de Futsal', '2455', '0', 'Muito Redonda', '1'), ('5', 'Pente', '20', '1', 'Muito eficaz', '1'), ('6', 'DSsdsadsa', '232323', '8', 'dsadsadsad', '1'), ('7', 'BARCO', '56789', '8', 'Rapido como um avião', '0');
COMMIT;

-- ----------------------------
-- Table structure for tabela_teste
-- ----------------------------
DROP TABLE IF EXISTS `tabela_teste`;
CREATE TABLE `tabela_teste` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`nome`  varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`idade`  int(11) NULL DEFAULT NULL ,
`altura`  int(11) NULL DEFAULT NULL ,
`trabalho`  text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_general_ci
AUTO_INCREMENT=13

;

-- ----------------------------
-- Records of tabela_teste
-- ----------------------------
BEGIN;
INSERT INTO `tabela_teste` VALUES ('8', 'Victor', '17', '175', 'Desenvolvedor Web'), ('9', 'Julia', '21', '178', 'Professora'), ('10', 'Carlos', '15', '156', 'Gerente'), ('11', 'Paula', '18', '167', 'Engenheira'), ('12', 'Rodrigo', '33', '189', 'Jogador de Futebol');
COMMIT;

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`nome`  varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`email`  varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`senha`  varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_general_ci
AUTO_INCREMENT=9

;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
BEGIN;
INSERT INTO `usuarios` VALUES ('1', 'Vendedor1', 'vende@muito.com', 'dsfasdfdsfdsf'), ('2', 'Vendedor2', 'vende@demais.com', 'sadasdsadasdasd'), ('3', 'Vendedor3', 'vendo@paraxuxu.com', 'sdasdsadasdsadasd'), ('4', 'Venndedor4', 'hello@world.com', 'sadsaadsadsad'), ('5', 'Pereira', 'ddddddd@email.com', '25d55ad283aa400af464c76d713c07ad'), ('7', 'sadsadasdsad', 'asdasdasdsad@sadsaadsad.com', 'b357660797b50f417bc4d0c0d9a84f37'), ('8', 'Victor', 'victor@son.com', '202cb962ac59075b964b07152d234b70');
COMMIT;

-- ----------------------------
-- Auto increment value for produtos
-- ----------------------------
ALTER TABLE `produtos` AUTO_INCREMENT=8;

-- ----------------------------
-- Auto increment value for tabela_teste
-- ----------------------------
ALTER TABLE `tabela_teste` AUTO_INCREMENT=13;

-- ----------------------------
-- Auto increment value for usuarios
-- ----------------------------
ALTER TABLE `usuarios` AUTO_INCREMENT=9;
