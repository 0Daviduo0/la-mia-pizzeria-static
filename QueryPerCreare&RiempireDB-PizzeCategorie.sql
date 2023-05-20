CREATE TABLE Category (
    Id BIGINT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL
);

CREATE TABLE pizza (
    Id BIGINT PRIMARY KEY,
    Nome VARCHAR(32) NOT NULL,
    Descrizione TEXT NOT NULL,
    Prezzo DECIMAL(5,2) NOT NULL,
    Img VARCHAR(255) NOT NULL,
    CategoryId BIGINT,
    FOREIGN KEY (CategoryId) REFERENCES Category(Id)
);

-- Inserimento delle categorie
INSERT INTO Category (Id, Nome)
VALUES
    (1, 'Piccola'),
    (2, 'Normale'),
    (3, 'Grande'),
    (4, 'Gigante');

-- Inserimento delle pizze
INSERT INTO pizza (Id, Nome, Descrizione, Prezzo, Img, CategoryId)
VALUES
    (1, 'Margherita', 'Mozzarella, pomodoro, basilico', 5.50, 'https://www.example.com/margherita.jpg', 1),
    (2, 'Diavola', 'Mozzarella, pomodoro, salame piccante', 7.50, 'https://www.example.com/diavola.jpg', 2),
    (3, 'Quattro stagioni', 'Mozzarella, pomodoro, prosciutto, funghi, carciofi', 8.50, 'https://www.example.com/quattrostagioni.jpg', 2),
    (4, 'Capricciosa', 'Mozzarella, pomodoro, prosciutto, funghi, carciofi, olive', 9.50, 'https://www.example.com/capricciosa.jpg', 3),
    (5, 'Calzone', 'Mozzarella, pomodoro, prosciutto, funghi', 8.00, 'https://www.example.com/calzone.jpg', 4),
    (6, 'Bufalina', 'Mozzarella di bufala, pomodoro, basilico', 7.50, 'https://www.example.com/bufalina.jpg', 1),
    (7, 'Salsiccia e friarielli', 'Mozzarella, pomodoro, salsiccia, friarielli', 9.00, 'https://www.example.com/salsicciaefriarielli.jpg', 3);

