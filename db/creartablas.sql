CREATE TABLE `distribuidora` .`tipo_productos` (
    `id_tipo_producto` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    CONSTRAINT pk_id_tipo_producto PRIMARY KEY (id_tipo_producto)
);

CREATE TABLE `distribuidora` .`products` (
    `id_product` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `data` VARCHAR(250) NOT NULL,
    `id_tipo_producto` INT NOT NULL,
    `stock` INT NOT NULL,
    CONSTRAINT pk_id_product PRIMARY KEY (id_product),
    CONSTRAINT fk_id_tipo_producto FOREIGN KEY (id_tipo_producto) REFERENCES tipo_productos(id_tipo_producto)
);




/*
CREATE TABLE `distribuidora` .`users` (
    `id_user` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `surname` VARCHAR(50) NOT NULL,
    `dni` VARCHAR(50) NOT NULL,
    CONSTRAINT pk_id_usuario PRIMARY KEY (id_user)
);
*/