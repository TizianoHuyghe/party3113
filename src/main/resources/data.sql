-- noinspection SqlNoDataSourceInspectionForFile

insert into VENUE (ID, VENUE_NAME, LINK_MORE_INFO, CAPACITY,
                   FOOD_PROVIDED, INDOOR, OUTDOOR, FREE_PARKING_AVAILABLE,
                   CITY, DISTANCE_FROM_PUBLIC_TRANSPORT_IN_KM)
values (1, 'De Club', 'https://transitm.mechelen.be/de-club',
        150, false, true, false, true, 'Mechelen', 2);

insert into CLIENT (ID, NAME, NR_OF_ORDERS, TOTAL_AMOUNT, DISCOUNT_TAKEN)
values (1, 'Vera', '50', 5000, 100);

insert into VENUE (ID, VENUE_NAME, LINK_MORE_INFO, CAPACITY,
                   FOOD_PROVIDED, INDOOR, OUTDOOR, FREE_PARKING_AVAILABLE,
                   CITY, DISTANCE_FROM_PUBLIC_TRANSPORT_IN_KM)
values (2, 'De Loods', 'https://transitm.mechelen.be/de-loods',
        1000, false, true, false, true, 'Mechelen', 2);

insert into VENUE (ID, VENUE_NAME, LINK_MORE_INFO, CAPACITY,
                   FOOD_PROVIDED, INDOOR, OUTDOOR, FREE_PARKING_AVAILABLE,
                   CITY, DISTANCE_FROM_PUBLIC_TRANSPORT_IN_KM)
values (3, 'Zapoi', 'https://www.facebook.com/KafeeZapoi/',
        150, true, true, false, false, 'Mechelen', 4);

insert into VENUE (ID, VENUE_NAME, LINK_MORE_INFO, CAPACITY,
                   FOOD_PROVIDED, INDOOR, OUTDOOR, FREE_PARKING_AVAILABLE,
                   CITY, DISTANCE_FROM_PUBLIC_TRANSPORT_IN_KM)
values (4, 'De Kuub', 'http://www.dekuub.be',
        150, true, true, true, false, 'Mechelen', 4);

insert into VENUE (ID, VENUE_NAME, LINK_MORE_INFO, CAPACITY,
                   FOOD_PROVIDED, INDOOR, OUTDOOR, FREE_PARKING_AVAILABLE,
                   CITY, DISTANCE_FROM_PUBLIC_TRANSPORT_IN_KM)
values (5, 't''Ile Maline', 'https://www.tilemalines.be',
        400, true, true, true, false, 'Mechelen', 6);

insert into VENUE (ID, VENUE_NAME, LINK_MORE_INFO, CAPACITY,
                   FOOD_PROVIDED, INDOOR, OUTDOOR, FREE_PARKING_AVAILABLE,
                   CITY, DISTANCE_FROM_PUBLIC_TRANSPORT_IN_KM)
values (6, 'Nekkerhal', 'https://www.nekkerhalbrusselsnorth.com/nl/organiseer/hal/',
        8800, false, true, false, true, 'Mechelen', 4);

insert into VENUE (ID, VENUE_NAME, LINK_MORE_INFO, CAPACITY,
                   FOOD_PROVIDED, INDOOR, OUTDOOR, FREE_PARKING_AVAILABLE,
                   CITY, DISTANCE_FROM_PUBLIC_TRANSPORT_IN_KM)
values (7, 'Nekkerbox', 'https://www.nekkerhalbrusselsnorth.com/nl/organiseer/nekkerbox/',
        2500, false, true, false, true, 'Mechelen', 4);

insert into VENUE (ID, VENUE_NAME, LINK_MORE_INFO, CAPACITY,
                   FOOD_PROVIDED, INDOOR, OUTDOOR, FREE_PARKING_AVAILABLE,
                   CITY, DISTANCE_FROM_PUBLIC_TRANSPORT_IN_KM)
values (8, 'Lamot', 'http://lamot-mechelen.be/',
        300, true, true, true, false, 'Mechelen', 3);

insert into VENUE (ID, VENUE_NAME, LINK_MORE_INFO, CAPACITY,
                   FOOD_PROVIDED, INDOOR, OUTDOOR, FREE_PARKING_AVAILABLE,
                   CITY, DISTANCE_FROM_PUBLIC_TRANSPORT_IN_KM)
values (9, 'Passade', 'https://www.passade.be/nl/feestzaal-mechelen',
        150, true, true, true, true, 'Mechelen', 2);

insert into VENUE (ID, VENUE_NAME, LINK_MORE_INFO, CAPACITY,
                   FOOD_PROVIDED, INDOOR, OUTDOOR, FREE_PARKING_AVAILABLE,
                   CITY, DISTANCE_FROM_PUBLIC_TRANSPORT_IN_KM)
values (10, 'Tivoli', 'https://www.kasteeltivoli.be/locatie',
        500, true, true, true, true, 'Mechelen', 8);

insert into VENUE (ID, VENUE_NAME, LINK_MORE_INFO, CAPACITY,
                   FOOD_PROVIDED, INDOOR, OUTDOOR, FREE_PARKING_AVAILABLE,
                   CITY, DISTANCE_FROM_PUBLIC_TRANSPORT_IN_KM)
values (11, 'Kruidtuin', 'https://www.mechelen.be/kruidtuin',
        500, false, false, true, false, 'Mechelen', 1);


INSERT INTO ARTIST (ID, ARTIST_NAME, BIO, GENRE, LINK_MORE_INFO, PORTFOLIO)
VALUES (1, 'Discobaar a moeder',
        'Discobaar A Moeder, een ondertussen legendarisch Antwerps fenomeen, draait al mee van in 2002. Het begon als een cafégrap van twee bevriende vinylfreaks, de grap houden ze er in, van draaien in een café genieten ze nog steeds, maar van een groots festival op z''n tijd zijn ze niet vies.',
        'Pop, Soul, Disco', 'http://www.discobaaramoeder.be/', 'Lotto Arena 6/03/2020');

INSERT INTO ARTIST (ID, ARTIST_NAME, BIO, GENRE, LINK_MORE_INFO, PORTFOLIO)
VALUES (2, 'Radio Botanique',
        'Radio Botanique: helemaal geen radio. Eigenlijk gewoon een discobaar. Vaste Parkpop (Mechelen) dansers en swingers.',
        'voor de lol', 'https://www.facebook.com/radiobotanique/', 'bekend van Parkpop');

INSERT INTO ARTIST (ID, ARTIST_NAME, BIO, GENRE, LINK_MORE_INFO, PORTFOLIO)
VALUES (3, 'DJ Koen',
        'Als allround DJ draai ik o.a. genres als de 90s, top 40, feest- en clubmuziek. Wekelijks draai ik op o.a. studentenfeesten, bruiloften, in kroegen, clubs en meer.',
        '90s, top 40, feest- en clubmuziek', 'https://www.facebook.com/DJKoenMossink/', '');

INSERT INTO ARTIST (ID, ARTIST_NAME, BIO, GENRE, LINK_MORE_INFO, PORTFOLIO)
VALUES (4, 'C-Man',
        '- 2nd place MNM Start To DJ 2016 - - Versuz - - Carré - - Sunrise Festival - - Ikon (Noxx) - - La Rocca - ... His First single ''Nothing is forever'' came out on 2Dutch (A music label from the Netherlands) in the summer of 2018.',
        'deephouse, EDM', 'https://www.facebook.com/cmandj/', 'Q-hotspot 17/07/2020');

INSERT INTO ARTIST (ID, ARTIST_NAME, BIO, GENRE, LINK_MORE_INFO, PORTFOLIO)
VALUES (5, 'Robbe Roels',
        'Wie Mechelen zegt zegt Robbe Roels, waar de 20-jarige dj 3 jaar geleden begon op kleine privé feestjes en gelegenheden draait hij nu elk weekend op de grootste fuiven in zijn regio. Al blijft het daar echter niet bij, andere studentensteden zoals o.a. Leuven maar evengoed de Normandische kust zijn al getroffen door zijn prestaties.',
        'Allround, Dance, Techno', 'https://vi.be/platform/robberoels', 'Shake That Asspi 2020');

INSERT INTO ARTIST (ID, ARTIST_NAME, BIO, GENRE, LINK_MORE_INFO, PORTFOLIO)
VALUES (6, 'Toloko',
        'My name is Stan, also known as Toloko, the DJ who adds the right amount of loco-ness to your party! I am an upcoming DJ talent in the region of Zemst, Belgium. I started my career behind the turntables at the age of 20 at local parties. Entertaining the crowd and making people dance to my music, makes me happy. Every gig, I bring my party people a new and customized set and I introduce them to the latest tracks.',
        'house, r&b', 'https://www.toloko.be/', '');

INSERT INTO ARTIST (ID, ARTIST_NAME, BIO, GENRE, LINK_MORE_INFO, PORTFOLIO)
VALUES (7, 'Tough Titty',
        'A Belgian Tribute to 80''s Glam and Heavy Metal',
        '', 'https://www.facebook.com/Tough-Titty-277601302444865', '');

INSERT INTO ARTIST (ID, ARTIST_NAME, BIO, GENRE, LINK_MORE_INFO, PORTFOLIO)
VALUES (8, 'Kryptonight',
        'Twee kerels die er al vijf jaar van houden om het publiek uit hun dak te zien gaan! Onze missie: Het leven is een feest en daar moet gedanst worden. Hoe doen we dat? Met onze Latin-, Dancehall- en een vleugje Commercialplaten voor alle leeftijden zorgen we voor ieder wat wils.',
        'Moombahton • Dancehall • Commercial', 'https://vi.be/platform/kryptonight',
        'SOME GIG''s: Tomorrowland''s Dreamville, MnM Start to Dj Finalist Flowtrack Summer Camp Casa Blanca Festival Sunrise Festival Red ''n Blue Café Local Noxx Publik Vice Festival KdG TD ...');



INSERT INTO PARTY
(name, price_presale_in_eur, price_in_eur, extra_info, date, doors, venue_Id)
VALUES ('Big Spring Party', 6, 10, '1 cocktail included',
        '2025-03-21', '10:00', 1);

INSERT INTO PARTY
(name, price_presale_in_eur, price_in_eur, extra_info, date, doors, venue_Id)
VALUES ('Liberty 2022', 4, 6, 'free vestiaire, viplounge',
        '2025-04-19', '22:00', 2);

INSERT INTO PARTY
(name, price_presale_in_eur, price_in_eur, extra_info, date, doors, venue_Id)
VALUES ('Uppercuts', null, null, ' ',
        '2022-03-16', '21:00', 4);

INSERT INTO PARTY
(name, price_presale_in_eur, price_in_eur, extra_info, date, doors, venue_Id)
VALUES ('Zoetzuur', null, null, 'Zoete house / Zure techno',
        '2025-05-03', '21:00', 4);

INSERT INTO PARTY
(name, price_presale_in_eur, price_in_eur, extra_info, date, doors, venue_Id)
VALUES ('Oldies but Goldies', null, null, 'afterparty@home van THE BOX!',
        '2025-04-25', '21:00', 4);

INSERT INTO PARTY
(name, price_presale_in_eur, price_in_eur, extra_info, date, doors, venue_Id)
VALUES ('Sapphire Soiree', 45, 45,
        'JCI Mechelen bestaat 45 jaar! En dat saffieren jubileum vieren we graag in stijl met een galabal in Kasteel Tivoli. En jij kan erbij zijn!',
        '2025-03-26', '21:00', 10);

INSERT INTO PARTY_ARTISTS (PARTIES_ID, ARTISTS_ID)
VALUES (select id from party where name = 'Big Spring Party', 1);
INSERT INTO PARTY_ARTISTS (PARTIES_ID, ARTISTS_ID)
VALUES (select id from party where name = 'Big Spring Party', 2);
INSERT INTO PARTY_ARTISTS (PARTIES_ID, ARTISTS_ID)
VALUES (select id from party where name = 'Liberty 2022', 2);
INSERT INTO PARTY_ARTISTS (PARTIES_ID, ARTISTS_ID)
VALUES (select id from party where name = 'Uppercuts', 3);
INSERT INTO PARTY_ARTISTS (PARTIES_ID, ARTISTS_ID)
VALUES (select id from party where name = 'Uppercuts', 5);
INSERT INTO PARTY_ARTISTS (PARTIES_ID, ARTISTS_ID)
VALUES (select id from party where name = 'Zoetzuur', 5);

-- 2 default users:
INSERT INTO USERS (USERNAME, PASSWORD, ENABLED)
VALUES ('admin', '$2a$10$9MIX8kYPkuB7uE/H5nHF8.KG6.YdjBA/voOnjSZnZDxLXL/2BIerS', true);
INSERT INTO AUTHORITIES (USERNAME, AUTHORITY)
VALUES ('admin', 'ADMIN');

INSERT INTO USERS (USERNAME, PASSWORD, ENABLED)
VALUES ('marie', '$2a$10$9TeBFudS7HsgCa4sSvP//O627sMq.KiTFrOr8IzrVlYw5c8aoKzNm', true);
INSERT INTO AUTHORITIES (USERNAME, AUTHORITY)
VALUES ('marie', 'USER');


-- the party animal users:
INSERT INTO USERS (USERNAME, PASSWORD, ENABLED)
VALUES ('giraf', '$2a$10$9TeBFudS7HsgCa4sSvP//O627sMq.KiTFrOr8IzrVlYw5c8aoKzNm', true);
INSERT INTO AUTHORITIES (USERNAME, AUTHORITY)
VALUES ('giraf', 'USER');
-- 1
INSERT INTO ANIMAL (NAME, CITY, BIO, USERNAME)
VALUES ('Gillende Giraf', 'Mechelen', 'maakt altijd veel lawaai', 'giraf');


INSERT INTO USERS (USERNAME, PASSWORD, ENABLED)
VALUES ('dromedaris', '$2a$10$9TeBFudS7HsgCa4sSvP//O627sMq.KiTFrOr8IzrVlYw5c8aoKzNm', true);
INSERT INTO AUTHORITIES (USERNAME, AUTHORITY)
VALUES ('dromedaris', 'USER');
-- 2
INSERT INTO ANIMAL (NAME, CITY, BIO, USERNAME)
VALUES ('Dorstige Dromedaris', 'Leest', 'drinkt alles op', 'dromedaris');


INSERT INTO USERS (USERNAME, PASSWORD, ENABLED)
VALUES ('draak', '$2a$10$9TeBFudS7HsgCa4sSvP//O627sMq.KiTFrOr8IzrVlYw5c8aoKzNm', true);
INSERT INTO AUTHORITIES (USERNAME, AUTHORITY)
VALUES ('draak', 'USER');
-- 3
INSERT INTO ANIMAL (NAME, CITY, BIO, USERNAME)
VALUES ('Dansende Draak', 'Hombeek', 'de stukken vliegen ervan af', 'draak');


INSERT INTO USERS (USERNAME, PASSWORD, ENABLED)
VALUES ('zebra', '$2a$10$9TeBFudS7HsgCa4sSvP//O627sMq.KiTFrOr8IzrVlYw5c8aoKzNm', true);
INSERT INTO AUTHORITIES (USERNAME, AUTHORITY)
VALUES ('zebra', 'USER');
-- 4
INSERT INTO ANIMAL (NAME, CITY, BIO, USERNAME)
VALUES ('Zingende Zebra', 'Leest', 'denkt dat hij goed kan zingen', 'zebra');


INSERT INTO USERS (USERNAME, PASSWORD, ENABLED)
VALUES ('das', '$2a$10$9TeBFudS7HsgCa4sSvP//O627sMq.KiTFrOr8IzrVlYw5c8aoKzNm', true);
INSERT INTO AUTHORITIES (USERNAME, AUTHORITY)
VALUES ('das', 'USER');
-- 5
INSERT INTO ANIMAL (NAME, CITY, BIO, USERNAME)
VALUES ('Drinkende Das', 'Hombeek', 'stopt niet', 'das');


INSERT INTO USERS (USERNAME, PASSWORD, ENABLED)
VALUES ('zalm', '$2a$10$9TeBFudS7HsgCa4sSvP//O627sMq.KiTFrOr8IzrVlYw5c8aoKzNm', true);
INSERT INTO AUTHORITIES (USERNAME, AUTHORITY)
VALUES ('zalm', 'USER');
-- 6
INSERT INTO ANIMAL (NAME, CITY, BIO, USERNAME)
VALUES ('Zuipende Zalm', 'Rumst', 'die wil je niet op je feest', 'zalm');


INSERT INTO USERS (USERNAME, PASSWORD, ENABLED)
VALUES ('flamingo', '$2a$10$9TeBFudS7HsgCa4sSvP//O627sMq.KiTFrOr8IzrVlYw5c8aoKzNm', true);
INSERT INTO AUTHORITIES (USERNAME, AUTHORITY)
VALUES ('flamingo', 'USER');
-- 7
INSERT INTO ANIMAL (NAME, CITY, BIO, USERNAME)
VALUES ('Feestende Flamingo', 'Mechelen', 'jeeeee', 'flamingo');


INSERT INTO USERS (USERNAME, PASSWORD, ENABLED)
VALUES ('kikker', '$2a$10$9TeBFudS7HsgCa4sSvP//O627sMq.KiTFrOr8IzrVlYw5c8aoKzNm', true);
INSERT INTO AUTHORITIES (USERNAME, AUTHORITY)
VALUES ('kikker', 'USER');
-- 8
INSERT INTO ANIMAL (NAME, CITY, BIO, USERNAME)
VALUES ('Kotsende Kikker', 'Mechelen', 'aie aie aie', 'kikker');


INSERT INTO ANIMAL_PARTIES(ANIMALS_ID, PARTIES_ID)
values (1, select id from party where name = 'Big Spring Party');
INSERT INTO ANIMAL_PARTIES(ANIMALS_ID, PARTIES_ID)
values (2, select id from party where name = 'Liberty 2022');
INSERT INTO ANIMAL_PARTIES(ANIMALS_ID, PARTIES_ID)
values (2, select id from party where name = 'Uppercuts');
INSERT INTO ANIMAL_PARTIES(ANIMALS_ID, PARTIES_ID)
values (2, select id from party where name = 'Zoetzuur');
INSERT INTO ANIMAL_PARTIES(ANIMALS_ID, PARTIES_ID)
values (2, select id from party where name = 'Oldies but Goldies');
INSERT INTO ANIMAL_PARTIES(ANIMALS_ID, PARTIES_ID)
values (3, select id from party where name = 'Big Spring Party');
INSERT INTO ANIMAL_PARTIES(ANIMALS_ID, PARTIES_ID)
values (3, select id from party where name = 'Liberty 2022');
INSERT INTO ANIMAL_PARTIES(ANIMALS_ID, PARTIES_ID)
values (4, select id from party where name = 'Uppercuts');
INSERT INTO ANIMAL_PARTIES(ANIMALS_ID, PARTIES_ID)
values (5, select id from party where name = 'Zoetzuur');
INSERT INTO ANIMAL_PARTIES(ANIMALS_ID, PARTIES_ID)
values (5, select id from party where name = 'Oldies but Goldies');
INSERT INTO ANIMAL_PARTIES(ANIMALS_ID, PARTIES_ID)
values (5, select id from party where name = 'Big Spring Party');
INSERT INTO ANIMAL_PARTIES(ANIMALS_ID, PARTIES_ID)
values (5, select id from party where name = 'Liberty 2022');
INSERT INTO ANIMAL_PARTIES(ANIMALS_ID, PARTIES_ID)
values (6, select id from party where name = 'Uppercuts');
INSERT INTO ANIMAL_PARTIES(ANIMALS_ID, PARTIES_ID)
values (7, select id from party where name = 'Zoetzuur');
INSERT INTO ANIMAL_PARTIES(ANIMALS_ID, PARTIES_ID)
values (8, select id from party where name = 'Big Spring Party');
INSERT INTO ANIMAL_PARTIES(ANIMALS_ID, PARTIES_ID)
values (8, select id from party where name = 'Liberty 2022');
INSERT INTO ANIMAL_PARTIES(ANIMALS_ID, PARTIES_ID)
values (8, select id from party where name = 'Uppercuts');
