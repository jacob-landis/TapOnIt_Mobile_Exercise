--DROP TABLE Products

CREATE TABLE Products (
    id int,
    title varchar(32),
    description varchar(512),
    image varchar(32),
    price decimal(18,2),
    likes int
)

INSERT INTO Products VALUES (0, 'TV', 'Tells visions.', 'TV.jpg', 499.99, 0)
INSERT INTO Products VALUES (1, 'Thermostat', 'Tells the temperature.', 'Thurmostat.jpg', 7.99, 0)
INSERT INTO Products VALUES (2, 'Cup', 'Drink in style with this cup!', 'Cup.jpg', 0.35, 0)
INSERT INTO Products VALUES (3, 'Rubber Duck', 'These guys are great listeners.', 'RubberDuck.jpg', 4.76, 0)
INSERT INTO Products VALUES (4, 'Clamp', 'Ripe with uses for the insecure.', 'Clamp.jpg', 15.22, 0)
INSERT INTO Products VALUES (5, 'White out', 'No one is perfect.', 'White Out.jpg', 3.50, 0)
INSERT INTO Products VALUES (6, 'Piano', 'Makes sounds when you poke it.', 'Piano.jpg', 789.99, 0)
INSERT INTO Products VALUES (7, 'Hanger', 'Keeps the wrinkles out.', 'Hanger.jpg', 2.00, 0)
INSERT INTO Products VALUES (8, 'Wagon', 'Top of the line hauling equipment.', 'Wagon.jpg', 36.48, 0)
INSERT INTO Products VALUES (9, 'Sofa', 'Better than couches.', 'Sofa.jpg', 339.99, 0)

SELECT * FROM Products