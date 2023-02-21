CREATE TABLE IF NOT EXISTS `mydb`.`dialy` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NULL,
  `content` TEXT(1000) NULL,
  `keyword` VARCHAR(45) NULL,
  `thedate` DATETIME NULL,
  PRIMARY KEY (`id`),
  INDEX `keyword` (`keyword` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '日记'

CREATE TABLE IF NOT EXISTS `mydb`.`summary` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `thedate` DATETIME NULL,
  `flag` CHAR(8) NULL COMMENT '周月年标记(wmy)',
  `content` TEXT(1000) NULL,
  `keyword` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '总结,周,月,年都在这个表里.'

CREATE TABLE IF NOT EXISTS `mydb`.`memo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NULL,
  `content` VARCHAR(500) NULL,
  `thedate` DATETIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '备忘录'

CREATE TABLE IF NOT EXISTS `mydb`.`booknote` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `bookname` VARCHAR(45) NULL,
  `notes` VARCHAR(500) NULL,
  `thedate` DATETIME NULL,
  `bookpic` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '读书笔记'

CREATE TABLE IF NOT EXISTS `mydb`.`tomatoClock` (
  `id` INT NOT NULL,
  `begintime` VARCHAR(45) NULL,
  `endtime` VARCHAR(45) NULL,
  `nomo` VARCHAR(45) CHARACTER SET 'utf8mb4' NULL COMMENT '其他信息',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '番茄时钟'

CREATE TABLE IF NOT EXISTS `mydb`.`lifeview` (
  `thedate` INT NOT NULL AUTO_INCREMENT,
  `content` VARCHAR(45) NULL,
  `keyword` VARCHAR(45) NULL,
  PRIMARY KEY (`thedate`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '给出人生建议，人生观，价值观'

CREATE TABLE IF NOT EXISTS `mydb`.`clockalert` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `begintime` DATETIME NULL,
  `endtime` DATETIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '时钟报时'

CREATE TABLE IF NOT EXISTS `mydb`.`health` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NULL,
  `content` VARCHAR(45) NULL,
  `type` VARCHAR(45) NULL COMMENT '健康类型',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '程序员健康指南'

CREATE TABLE IF NOT EXISTS `mydb`.`foodmenu` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(128) NULL,
  `content` VARCHAR(500) NULL,
  `keyword` VARCHAR(128) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '菜谱'

CREATE TABLE IF NOT EXISTS `mydb`.`wiki` (
  `id` INT NOT NULL,
  `content` VARCHAR(45) NULL,
  `thedate` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = '百科,记录浏览的数据\n'