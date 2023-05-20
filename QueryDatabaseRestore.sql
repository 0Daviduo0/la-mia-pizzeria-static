CREATE TABLE CategoryDb (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(50) NOT NULL
);

CREATE TABLE PizzaDb (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(50) NOT NULL,
    Description NVARCHAR(200) NOT NULL,
    ImageUrl NVARCHAR(200) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    CategoryId INT NOT NULL REFERENCES CategoryDb(Id)
);

INSERT INTO CategoryDb (Name)
VALUES ('Vegetariana'),
       ('Carne'),
       ('Pesce');

INSERT INTO PizzaDb (Name, Description, ImageUrl, Price, CategoryId)
VALUES ('Peppa pig', 'Pizza con impasto di Peppa Pig e forma di Peppa Pig', 'https://i.ytimg.com/vi/x0aAA_37mD8/hqdefault.jpg', 350, 1),
       ('Pizza completa', 'Pizza completa incredibile con tutte le cose migliori da mettere su una pizza', 'https://i.kym-cdn.com/photos/images/original/002/166/877/9a7.jpg', 19, 2),
       ('Pizza Hut', 'Pizza mascotte della famosissima marca di Pizza Hut', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDaBGy_M1LMEmyrry1BEtGx3V_B-Vzvf7_eA&usqp=CAU', 99, 3);
