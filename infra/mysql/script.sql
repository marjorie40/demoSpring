


-- creation table users
CREATE TABLE USERS (
    id_user INT PRIMARY KEY UNIQUE NOT NULL AUTO_INCREMENT,
    id_admin INT,
    id_role INT NOT NULL DEFAULT 1,
    id_address INT,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    phone VARCHAR(10) UNIQUE NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    is_deleted BOOLEAN
);


-- Insertion des utilisateurs
INSERT INTO USERS (id_admin, id_role, id_address, firstname, lastname, phone, email, password_hash, is_deleted) VALUES
-- Admins
(null, 3, 1, 'Julien', 'Machin', '0612345678', 'julien.admin1@example.com', '$2a$12$...', FALSE),
(null, 3, 2, 'Sophie', 'Truc', '0687654321', 'sophie.admin2@example.com', '$2a$12$...', FALSE);

-- Hosts
INSERT INTO USERS (
    id_admin, id_role, id_address, firstname, lastname, phone, email, password_hash, is_deleted) VALUES
    (1, 2, 3, 'Thomas', 'Martin', '0611223344', 'thomas.host1@example.com', '$2a$12$.98', FALSE),
    (1, 2, 4, 'Camille', 'Dupont', '0655667788', 'camille.host2@example.com', '$2a$12$.213', FALSE),

-- Guests
    (2, 1, 5, 'Lucas', 'Chauvin', '0699887766', 'lucas.guest1@example.com', '$2a$12$.325', FALSE),
    (2, 1, 6, 'Emma', 'Pomme', '0644332211', 'emma.guest2@example.com', '$2a$12$1218', FALSE);
