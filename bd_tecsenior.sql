SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `bd_tecsenior` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd_tecsenior`;

DELIMITER $$
DROP PROCEDURE IF EXISTS `sp_atualizar_cargo`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_atualizar_cargo` (IN `sp_id` INT, IN `sp_nome` VARCHAR(64), IN `sp_salario` DOUBLE, IN `sp_carga_horaria` INT, IN `sp_descricao` VARCHAR(256))  BEGIN
update cargo
set  nome = sp_nome, salario = sp_salario, carga_horaria = sp_carga_horaria, descricao = sp_descricao
where id = sp_id;
END$$

DROP PROCEDURE IF EXISTS `sp_atualizar_chamado`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_atualizar_chamado` (IN `sp_id` INT, IN `sp_descricao` VARCHAR(256), IN `sp_status` VARCHAR(256), IN `sp_emissao` DATETIME, IN `sp_conclusao` DATETIME, IN `sp_tipo_chamado` VARCHAR(16), IN `sp_funcionario_id` INT, IN `sp_tecnico_terceirizado_id` INT, IN `sp_cliente_id` INT)  BEGIN
UPDATE chamado
SET descricao = sp_descricao, status_chamado = sp_status, emissao = sp_emissao, conclusao = sp_conclusao, tipo_chamado = sp_tipo_chamado, funcionario_id = sp_funcionario_id, tecnico_terceirizado_id = sp_tecnico_terceirizado_id, cliente_id = sp_cliente_id
WHERE id = sp_id;
END$$

DROP PROCEDURE IF EXISTS `sp_atualizar_cliente`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_atualizar_cliente` (IN `sp_id` INT, IN `sp_pessoa_id` INT)  BEGIN
UPDATE cliente
SET pessoa_id = sp_pessoa_id
WHERE id = sp_id;
END$$

DROP PROCEDURE IF EXISTS `sp_atualizar_Conta_financeira`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_atualizar_Conta_financeira` (IN `sp_id` INT, IN `SP_conta` INT, IN `sp_agencia` INT, IN `sp_instituicao` VARCHAR(64))  BEGIN
update conta_financeira 
set conta = sp_conta, agencia = sp_agencia, instituicao = sp_instituição
where id = sp_id;
END$$

DROP PROCEDURE IF EXISTS `sp_atualizar_funcionario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_atualizar_funcionario` (IN `sp_id` INT, IN `sp_pessoa_id` INT, IN `sp_cargo_id` INT)  BEGIN
update funcionario 
set pessoa_id = sp_pessoa_id, cargo_id = sp_cargo_id
where id = sp_id;
END$$

DROP PROCEDURE IF EXISTS `sp_atualizar_login`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_atualizar_login` (IN `sp_id` INT, IN `sp_email` VARCHAR(64), IN `sp_CPF` VARCHAR(11), IN `sp_senha` VARCHAR(32))  BEGIN
update login
set email = sp_email, cpf = sp_CPF, senha = sp_senha  where id = sp_id;
END$$

DROP PROCEDURE IF EXISTS `sp_atualizar_login_sem_senha`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_atualizar_login_sem_senha` (IN `sp_id` INT, IN `sp_email` VARCHAR(64), IN `sp_CPF` VARCHAR(11))  BEGIN
update login
set email = sp_email, cpf = sp_CPF  where id = sp_id;
END$$

DROP PROCEDURE IF EXISTS `sp_atualizar_pagamento`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_atualizar_pagamento` (IN `sp_id` INT, IN `sp_forma_pagamento` VARCHAR(16))  BEGIN
update pagamento 
set forma_pagamento = sp_forma_pagamento
where id = sp_id;
END$$

DROP PROCEDURE IF EXISTS `sp_atualizar_pedido`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_atualizar_pedido` (IN `sp_id` INT, IN `sp_situacao` VARCHAR(16), IN `sp_plano_id` INT, IN `sp_pagamento_id` INT)  BEGIN
update pedido
set situacao = sp_situacao, plano_id = sp_plano_id, pagamento_id = sp_pagamento_id
where id = sp_id;
END$$

DROP PROCEDURE IF EXISTS `sp_atualizar_pessoa`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_atualizar_pessoa` (IN `sp_id` INT, `sp_nome` VARCHAR(64), IN `sp_cep` VARCHAR(8), IN `sp_tel` VARCHAR(11), IN `sp_conta_fin_id` INT(11), IN `sp_login_id` INT(11))  BEGIN
UPDATE pessoa 
SET nome = sp_nome, cep =  sp_cep, telefone = sp_tel, conta_financeira_id = sp_conta_fin_id, login_id= sp_login_id where id = sp_id;
SELECT * FROM pessoa;
END$$

DROP PROCEDURE IF EXISTS `sp_atualizar_plano`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_atualizar_plano` (IN `sp_id` INT, IN `SP_nome` VARCHAR(64), IN `sp_mensalidade` DOUBLE, IN `sp_descricao` VARCHAR(128))  BEGIN
update Plano
set nome = sp_nome, mensalidade = sp_mensalidade, descricao = sp_descricao
where id = sp_id;
END$$

DROP PROCEDURE IF EXISTS `sp_atualizar_Tecnico_terceirizado`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_atualizar_Tecnico_terceirizado` (IN `sp_id` INT, IN `SP_especializacao` VARCHAR(256), IN `sp_escalabilidade` VARCHAR(16), IN `sp_pessoa_id` INT)  BEGIN
update Tecnico_terceirizado
set especializacao = sp_especializacao, escalabilidade = sp_escalabilidade, pessoa_id = sp_pessoa_id
where id = sp_id;
END$$

DROP PROCEDURE IF EXISTS `sp_criar_Cargo`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_criar_Cargo` (IN `sp_nome` VARCHAR(64), IN `sp_salario` DOUBLE, IN `sp_carga_horaria` INT, IN `sp_descricao` VARCHAR(256))  BEGIN
INSERT INTO cargo (nome, salario, carga_horaria, descricao)
VALUES(SP_nome, sp_salario, sp_carga_horaria, sp_descricao);
END$$

DROP PROCEDURE IF EXISTS `sp_criar_chamado`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_criar_chamado` (IN `sp_descricao` VARCHAR(256), IN `sp_status` VARCHAR(256), IN `sp_emissao` DATETIME, IN `sp_conclusao` DATETIME, IN `sp_tipo_chamado` VARCHAR(16), IN `sp_funcionario_id` INT, IN `sp_tecnico_terceirizado_id` INT, IN `sp_cliente_id` INT)  BEGIN
INSERT INTO chamado (descricao, status_chamado, emissao, conclusao, tipo_chamado, funcionario_id, tecnico_terceirizado_id, cliente_id)
VALUES(sp_descricao, sp_status, sp_emissao, sp_conclusao, sp_tipo_chamado, sp_funcionario_id, sp_tecnico_terceirizado_id, sp_cliente_id);
END$$

DROP PROCEDURE IF EXISTS `sp_criar_cliente`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_criar_cliente` (IN `sp_pessoa_id` INT)  BEGIN
insert into cliente (pessoa_id)
values (sp_pessoa_id);
END$$

DROP PROCEDURE IF EXISTS `sp_criar_Conta_financeira`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_criar_Conta_financeira` (IN `SP_conta` INT, IN `sp_agencia` INT, IN `sp_instituicao` VARCHAR(64))  BEGIN
INSERT INTO conta_financeira (Conta, agencia, instituicao)
VALUES(SP_conta, sp_agencia,sp_instituicao);
END$$

DROP PROCEDURE IF EXISTS `sp_criar_funcionario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_criar_funcionario` (IN `sp_pessoa_id` INT, IN `sp_cargo_id` INT)  BEGIN
insert into funcionario (pessoa_id, cargo_id)
values (sp_pessoa_id, sp_cargo_id);
END$$

DROP PROCEDURE IF EXISTS `sp_criar_login`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_criar_login` (IN `sp_email` VARCHAR(64), IN `sp_CPF` VARCHAR(11), IN `sp_senha` VARCHAR(32))  begin
INSERT INTO LOGIN (email, cpf, senha )
VALUES (sp_email, sp_cpf, sp_senha);
end$$

DROP PROCEDURE IF EXISTS `sp_criar_pagamento`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_criar_pagamento` (IN `sp_forma_pagamento` VARCHAR(16))  BEGIN
DECLARE sp_id INT;
set sp_id =  (SELECT id FROM pagamento ORDER BY Id DESC LIMIT 1);
insert into pagamento (id, forma_pagamento)
values (sp_id+1, sp_forma_pagamento);
END$$

DROP PROCEDURE IF EXISTS `sp_criar_pedido`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_criar_pedido` (IN `sp_situacao` VARCHAR(16), IN `sp_cliente_id` INT, IN `sp_plano_id` INT, IN `sp_pagamento_id` INT)  BEGIN
insert into pedido (situacao, cliente_id, plano_id, pagamento_id)
values (sp_situacao, sp_cliente_id, sp_plano_id, sp_pagamento_id);
END$$

DROP PROCEDURE IF EXISTS `sp_criar_pessoa`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_criar_pessoa` (IN `sp_nome` VARCHAR(64), IN `sp_cep` VARCHAR(8), IN `sp_tel` VARCHAR(11), IN `sp_conta_fin` INT(11), IN `sp_login_id` INT(11))  BEGIN
INSERT INTO pessoa (nome, cep, telefone, conta_financeira_id, login_id) VALUES (sp_nome, sp_cep, sp_tel, sp_conta_fin, sp_login_id);
END$$

DROP PROCEDURE IF EXISTS `sp_criar_Plano`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_criar_Plano` (IN `sp_nome` VARCHAR(64), IN `sp_mensalidade` DOUBLE, IN `sp_descricao` VARCHAR(128))  BEGIN
INSERT INTO plano (nome, mensalidade, descricao)
VALUES(SP_nome, sp_mensalidade, sp_descricao);
SELECT * FROM plano;
END$$

DROP PROCEDURE IF EXISTS `sp_criar_tecnico_terceirizado`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_criar_tecnico_terceirizado` (IN `sp_especializacao` VARCHAR(256), IN `sp_escalabilidade` VARCHAR(16), IN `sp_pessoa_id` INT)  BEGIN
INSERT INTO tecnico_terceirizado (especializacao, escalabilidade, pessoa_id)
VALUES(sp_especializacao, sp_escalabilidade, sp_pessoa_id);
END$$

DROP PROCEDURE IF EXISTS `sp_deletar_Cargo`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletar_Cargo` (IN `sp_id` INT)  BEGIN
delete from Cargo
where id = sp_id;
END$$

DROP PROCEDURE IF EXISTS `sp_deletar_chamado`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletar_chamado` (IN `sp_id` INT)  BEGIN
DELETE FROM chamado WHERE id = sp_id;
END$$

DROP PROCEDURE IF EXISTS `sp_deletar_cliente`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletar_cliente` (IN `sp_id` INT)  BEGIN
delete from cliente
where id = sp_id;
END$$

DROP PROCEDURE IF EXISTS `sp_deletar_conta_financeira`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletar_conta_financeira` (IN `sp_id` INT)  BEGIN
DELETE FROM conta_financeira WHERE id = sp_id;
END$$

DROP PROCEDURE IF EXISTS `sp_deletar_funcionario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletar_funcionario` (IN `sp_id` INT)  BEGIN
delete from funcionario
where id = sp_id;
END$$

DROP PROCEDURE IF EXISTS `sp_deletar_login`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletar_login` (IN `sp_id` INT)  BEGIN
DELETE FROM login WHERE id = sp_id;
END$$

DROP PROCEDURE IF EXISTS `sp_deletar_pagamento`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletar_pagamento` (IN `sp_id` INT)  BEGIN
delete from pagamento
where id = sp_id;
END$$

DROP PROCEDURE IF EXISTS `sp_deletar_pedido`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletar_pedido` (IN `sp_id` INT)  BEGIN
delete from pedido
where id = sp_id;
END$$

DROP PROCEDURE IF EXISTS `sp_deletar_pessoa`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletar_pessoa` (IN `sp_id` INT)  BEGIN 
DELETE FROM pessoa WHERE pessoa.id = sp_id;
END$$

DROP PROCEDURE IF EXISTS `sp_deletar_Plano`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletar_Plano` (IN `sp_id` INT)  BEGIN
delete from Plano where id = sp_id;
END$$

DROP PROCEDURE IF EXISTS `sp_deletar_Tecnico_terceirizado`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletar_Tecnico_terceirizado` (IN `sp_id` INT)  BEGIN
delete from tecnico_terceirizado
where id = sp_id;
END$$

DROP PROCEDURE IF EXISTS `sp_listar_Cargo`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listar_Cargo` ()  BEGIN
SELECT nome, salario, carga_horaria, descricao FROM Cargo;
END$$

DROP PROCEDURE IF EXISTS `sp_listar_chamado`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listar_chamado` ()  BEGIN
SELECT descricao, status_chamado, tipo_chamado, funcionario_id, tecnico_terceirizado_id, cliente_id
FROM chamado;
END$$

DROP PROCEDURE IF EXISTS `sp_listar_cliente`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listar_cliente` ()  BEGIN
SELECT cCliente.id AS Matricula, cPessoa.nome AS Nome, cLogin.email AS Email FROM pessoa cPessoa
JOIN login cLogin
ON cPessoa.login_id = cLogin.id
JOIN cliente cCliente
ON cPessoa.id = cCliente.pessoa_id;
END$$

DROP PROCEDURE IF EXISTS `sp_listar_Conta_financeira`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listar_Conta_financeira` ()  BEGIN
SELECT conta, agencia, instituicao FROM conta_financeira;
END$$

DROP PROCEDURE IF EXISTS `sp_listar_funcionario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listar_funcionario` ()  BEGIN
SELECT cFunc.id AS Matricula, cPessoa.nome, cCargo.nome AS Cargo FROM pessoa cPessoa
JOIN funcionario cFunc
ON cPessoa.id = cFunc.pessoa_id
JOIN cargo cCargo
ON cFunc.cargo_id = cCargo.id;
END$$

DROP PROCEDURE IF EXISTS `sp_listar_login`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listar_login` ()  BEGIN
SELECT id AS Codigo, email AS Email, cpf as CPF FROM login;

END$$

DROP PROCEDURE IF EXISTS `sp_listar_pagamento`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listar_pagamento` ()  BEGIN
SELECT forma_pagamento AS Pagamento  FROM pagamento;
END$$

DROP PROCEDURE IF EXISTS `sp_listar_pedido`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listar_pedido` (IN `sp_id` INT)  BEGIN
SELECT pPedido.id AS Pedido, pPessoa.nome, pPedido.situacao, pPlano.nome AS Plano, pPagamento.forma_pagamento AS Pagamento  FROM pedido pPedido
JOIN cliente pCliente
ON pCliente.id = pPedido.cliente_id
JOIN pessoa pPessoa
ON pPessoa.id = pCliente.pessoa_id
JOIN plano pPlano
ON pPlano.id = pPedido.plano_id 
JOIN pagamento pPagamento
ON pPagamento.id = pPedido.pagamento_id
WHERE pPedido.id = sp_id;
END$$

DROP PROCEDURE IF EXISTS `sp_listar_pessoa`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listar_pessoa` ()  BEGIN
SELECT pPessoa.id AS Codigo, pPessoa.nome AS Nome, pLogin.email AS Email, pLogin.cpf as CPF, pPessoa.cep AS CEP, pPessoa.telefone AS Telefone  FROM pessoa pPessoa
JOIN login pLogin 
ON pPessoa.login_id = pLogin.id;
END$$

DROP PROCEDURE IF EXISTS `sp_listar_Plano`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listar_Plano` ()  BEGIN
SELECT nome, mensalidade, descricao FROM plano;
END$$

DROP PROCEDURE IF EXISTS `sp_listar_Tecnico_terceirizado`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listar_Tecnico_terceirizado` ()  BEGIN
SELECT p_pes.nome, especializacao, escalabilidade  FROM tecnico_terceirizado p_t_t
JOIN pessoa p_pes
ON p_pes.id = p_t_t.pessoa_id;
END$$

DROP PROCEDURE IF EXISTS `sp_logar`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_logar` (IN `sp_cpf` VARCHAR(11), IN `sp_senha` VARCHAR(32))  BEGIN
SELECT cpf, senha FROM login WHERE cpf = sp_cpf and senha = sp_senha;
END$$

DELIMITER ;

DROP TABLE IF EXISTS `cargo`;
CREATE TABLE IF NOT EXISTS `cargo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(64) NOT NULL,
  `salario` double NOT NULL,
  `carga_horaria` int(11) NOT NULL,
  `descricao` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `chamado`;
CREATE TABLE IF NOT EXISTS `chamado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(256) NOT NULL,
  `status_chamado` varchar(16) NOT NULL,
  `emissao` datetime NOT NULL,
  `conclusao` datetime DEFAULT NULL,
  `tipo_chamado` varchar(16) NOT NULL,
  `funcionario_id` int(11) NOT NULL,
  `tecnico_terceirizado_id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_chamado_funcionario1_idx` (`funcionario_id`),
  KEY `fk_chamado_tecnico_terceirizado1_idx` (`tecnico_terceirizado_id`),
  KEY `fk_chamado_cliente1_idx` (`cliente_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_cliente` varchar(16) NOT NULL,
  `pessoa_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pessoa_id` (`pessoa_id`),
  KEY `fk_cliente_pessoa1_idx` (`pessoa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `conta_financeira`;
CREATE TABLE IF NOT EXISTS `conta_financeira` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conta` int(11) NOT NULL,
  `agencia` int(11) NOT NULL,
  `instituicao` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `funcionario`;
CREATE TABLE IF NOT EXISTS `funcionario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pessoa_id` int(11) NOT NULL,
  `cargo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pessoa_id` (`pessoa_id`),
  KEY `fk_funcionario_pessoa1_idx` (`pessoa_id`),
  KEY `fk_funcionario_cargo1_idx` (`cargo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(64) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `senha` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf` (`cpf`),
  UNIQUE KEY `email` (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `pagamento`;
CREATE TABLE IF NOT EXISTS `pagamento` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `forma_pagamento` varchar(16) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `forma_pagamento` (`forma_pagamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE IF NOT EXISTS `pedido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `situacao` varchar(16) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `plano_id` int(11) NOT NULL,
  `pagamento_id` int(10) UNSIGNED ZEROFILL NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pedido_cliente1_idx` (`cliente_id`),
  KEY `fk_pedido_plano1_idx` (`plano_id`),
  KEY `fk_pedido_pagamento1_idx` (`pagamento_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `pessoa`;
CREATE TABLE IF NOT EXISTS `pessoa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(64) NOT NULL,
  `cep` varchar(8) NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `conta_financeira_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`),
  UNIQUE KEY `conta_financeira_id` (`conta_financeira_id`),
  UNIQUE KEY `login_id` (`login_id`),
  KEY `fk_pessoa_conta_financeira_idx` (`conta_financeira_id`),
  KEY `fk_pessoa_login1_idx` (`login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `plano`;
CREATE TABLE IF NOT EXISTS `plano` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(64) NOT NULL,
  `mensalidade` double NOT NULL,
  `descricao` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `tecnico_terceirizado`;
CREATE TABLE IF NOT EXISTS `tecnico_terceirizado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `especializacao` varchar(256) NOT NULL,
  `escalabilidade` varchar(16) NOT NULL,
  `pessoa_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pessoa_id` (`pessoa_id`),
  KEY `fk_tecnico_terceirizado_pessoa1_idx` (`pessoa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `chamado`
  ADD CONSTRAINT `fk_chamado_cliente1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_chamado_funcionario1` FOREIGN KEY (`funcionario_id`) REFERENCES `funcionario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_chamado_tecnico_terceirizado1` FOREIGN KEY (`tecnico_terceirizado_id`) REFERENCES `tecnico_terceirizado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `cliente`
  ADD CONSTRAINT `fk_cliente_pessoa1` FOREIGN KEY (`pessoa_id`) REFERENCES `pessoa` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `funcionario`
  ADD CONSTRAINT `fk_funcionario_cargo1` FOREIGN KEY (`cargo_id`) REFERENCES `cargo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_funcionario_pessoa1` FOREIGN KEY (`pessoa_id`) REFERENCES `pessoa` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `pedido`
  ADD CONSTRAINT `fk_pedido_cliente1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pedido_pagamento1` FOREIGN KEY (`pagamento_id`) REFERENCES `pagamento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pedido_plano1` FOREIGN KEY (`plano_id`) REFERENCES `plano` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `pessoa`
  ADD CONSTRAINT `fk_pessoa_conta_financeira` FOREIGN KEY (`conta_financeira_id`) REFERENCES `conta_financeira` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pessoa_login1` FOREIGN KEY (`login_id`) REFERENCES `login` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `tecnico_terceirizado`
  ADD CONSTRAINT `fk_tecnico_terceirizado_pessoa1` FOREIGN KEY (`pessoa_id`) REFERENCES `pessoa` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
