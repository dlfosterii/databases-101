CREATE TABLE restaurant (
    id SERIAL PRIMARY KEY,
    restaurant_name VARCHAR NOT NULL,
    distance NUMERIC,
    stars NUMERIC,
    category VARCHAR,
    fav_dish VARCHAR,
    takeout_avil BOOLEAN,
    visit_date TIMESTAMP
);

INSERT INTO restaurant VALUES (
    DEFAULT
    ,'Redeye Mule'
    ,12.4
    ,4.5
    ,'burgers'
    ,'Jake Burger'
    ,TRUE
    ,'2020-05-21 09:45:00'
);

INSERT INTO restaurant VALUES (
    DEFAULT
    ,'Reveille Cafe'
    ,1.8
    ,4.7
    ,'breakfast'
    ,'The Kitchen Sink'
    ,TRUE
    ,'2020-01-20 09:45:00'
);

INSERT INTO restaurant VALUES (
    DEFAULT
    ,'Volcano Steak & Sushi'
    ,1.6
    ,4.3
    ,'Japanese'
    ,'NY Strip (5oz) & Scallop (5oz)'
    ,TRUE
    ,'2019-09-02 18:45:00'
);

INSERT INTO restaurant VALUES (
    DEFAULT
    ,'Poblanos Mexican Grill'
    ,5.5
    ,5.0
    ,'Mexican'
    ,'Poblanos Rellenos'
    ,TRUE
    ,'2020-05-13 18:45:00'
);

INSERT INTO restaurant VALUES (
    DEFAULT
    ,'Hong Kong Star'
    ,4.6
    ,4.2
    ,'Chinese'
    ,'Kung Pao chicken'
    ,TRUE
    ,'2020-02-28 19:45:00'
);

INSERT INTO restaurant VALUES (
    DEFAULT
    ,'Major Q BBQ & Catering'
    ,5.7
    ,4.7
    ,'BBQ'
    ,'Brisket'
    ,TRUE
    ,'2020-02-28 19:45:00'
);

INSERT INTO restaurant VALUES (
    DEFAULT
    ,'Waffle House'
    ,5.2
    ,4.7
    ,'breakfast'
    ,'Cheese Eggs Plate'
    ,TRUE
    ,'2020-03-02 20:05:00'
);

INSERT INTO restaurant VALUES (
    DEFAULT
    ,'Moe''s Southwest Grill'
    ,4.0
    ,3.9
    ,'Mexican'
    ,'Joey Bag of Doughnuts'
    ,TRUE
    ,'2020-01-15 20:05:00'
);

-- These are for the v2 DB
INSERT INTO restaurant VALUES (
    DEFAULT
    ,'Moe''s'
    ,'Atlata, GA'
    ,'mexican'
);


