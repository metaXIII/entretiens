drop table if exists team;
drop table if exists trainer;
drop table if exists is_type;
drop table if exists pokemon;
drop table if exists type;

create table pokemon
(
    id     int         not null,
    name   varchar(10) not null,
    secret varchar     not null,
    primary key (id)
);


create table type
(
    id      int         not null,
    libelle varchar(10) not null,
    primary key (id)
);

create table is_type
(
    id         int not null,
    pokemon_id int not null,
    type_id    int not null,
    primary key (id),
    foreign key (pokemon_id) references pokemon (id),
    foreign key (type_id) references type (id)
);

create table trainer
(
    id   int         not null,
    name varchar(25) not null,
    primary key (id)
);


create table team
(
    id         int not null,
    trainer_id int not null,
    pokemon_id int not null,
    level      int not null,
    primary key (id),
    foreign key (trainer_id) references trainer (id),
    foreign key (pokemon_id) references pokemon (id)
);

insert into trainer (id, name)
values (1, 'pierre'),
       (2, 'ondine'),
       (3, 'major bob'),
       (4, 'erika'),
       (5, 'koga'),
       (6, 'morgane'),
       (7, 'auguste'),
       (8, 'giovanni'),
       (9, 'olga'),
       (10, 'aldo'),
       (11, 'agatha'),
       (12, 'peter');

insert into pokemon (id, name, secret)
values (1, 'bulbizarre', 'secretValue that should never appear to front'),
       (2, 'herbizarre', 'secretValue that should never appear to front'),
       (3, 'florizarre', 'secretValue that should never appear to front'),
       (4, 'salameche', 'secretValue that should never appear to front'),
       (5, 'reptincel', 'secretValue that should never appear to front'),
       (6, 'dracaufeu', 'secretValue that should never appear to front'),
       (7, 'carapuce', 'secretValue that should never appear to front'),
       (8, 'carabaffe', 'secretValue that should never appear to front'),
       (9, 'tortank', 'secretValue that should never appear to front'),
       (10, 'chenipan', 'secretValue that should never appear to front'),
       (11, 'chrysacier', 'secretValue that should never appear to front'),
       (12, 'papilusion', 'secretValue that should never appear to front'),
       (13, 'aspicot', 'secretValue that should never appear to front'),
       (14, 'coconfort', 'secretValue that should never appear to front'),
       (15, 'dardargnan', 'secretValue that should never appear to front'),
       (16, 'roucool', 'secretValue that should never appear to front'),
       (17, 'roucoups', 'secretValue that should never appear to front'),
       (18, 'roucarnage', 'secretValue that should never appear to front'),
       (19, 'rattata', 'secretValue that should never appear to front'),
       (20, 'rattatac', 'secretValue that should never appear to front'),
       (21, 'piafabec', 'secretValue that should never appear to front'),
       (22, 'rapasdepic', 'secretValue that should never appear to front'),
       (23, 'abo', 'secretValue that should never appear to front'),
       (24, 'arbok', 'secretValue that should never appear to front'),
       (25, 'pikachu', 'secretValue that should never appear to front'),
       (26, 'raichu', 'secretValue that should never appear to front'),
       (27, 'sabelette', 'secretValue that should never appear to front'),
       (28, 'sablaireau', 'secretValue that should never appear to front'),
       -- ( 29, 'nidoran♀', 'secretValue that should never appear to front),
       (29, 'nidoranf', 'secretValue that should never appear to front'),
       (30, 'nidorina', 'secretValue that should never appear to front'),
       (31, 'nidoqueen', 'secretValue that should never appear to front'),
       -- ( 32, 'nidoran♂', 'secretValue that should never appear to front),
       (32, 'nidoranm', 'secretValue that should never appear to front'),
       (33, 'nidorino', 'secretValue that should never appear to front'),
       (34, 'nidoking', 'secretValue that should never appear to front'),
       (35, 'melofee', 'secretValue that should never appear to front'),
       (36, 'melodelfe', 'secretValue that should never appear to front'),
       (37, 'goupix', 'secretValue that should never appear to front'),
       (38, 'feunard', 'secretValue that should never appear to front'),
       (39, 'rondoudou', 'secretValue that should never appear to front'),
       (40, 'grodoudou', 'secretValue that should never appear to front'),
       (41, 'nosferapti', 'secretValue that should never appear to front'),
       (42, 'nosferalto', 'secretValue that should never appear to front'),
       (43, 'mystherbe', 'secretValue that should never appear to front'),
       (44, 'ortide', 'secretValue that should never appear to front'),
       (45, 'rafflesia', 'secretValue that should never appear to front'),
       (46, 'paras', 'secretValue that should never appear to front'),
       (47, 'parasect', 'secretValue that should never appear to front'),
       (48, 'mimitoss', 'secretValue that should never appear to front'),
       (49, 'aeromite', 'secretValue that should never appear to front'),
       (50, 'taupiqueur', 'secretValue that should never appear to front'),
       (51, 'triopikeur', 'secretValue that should never appear to front'),
       (52, 'miaouss', 'secretValue that should never appear to front'),
       (53, 'persian', 'secretValue that should never appear to front'),
       (54, 'psykokwak', 'secretValue that should never appear to front'),
       (55, 'akwakwak', 'secretValue that should never appear to front'),
       (56, 'ferosinge', 'secretValue that should never appear to front'),
       (57, 'colossinge', 'secretValue that should never appear to front'),
       (58, 'caninos', 'secretValue that should never appear to front'),
       (59, 'arcanin', 'secretValue that should never appear to front'),
       (60, 'ptitard', 'secretValue that should never appear to front'),
       (61, 'tetarte', 'secretValue that should never appear to front'),
       (62, 'tartard', 'secretValue that should never appear to front'),
       (63, 'abra', 'secretValue that should never appear to front'),
       (64, 'kadabra', 'secretValue that should never appear to front'),
       (65, 'alakazam', 'secretValue that should never appear to front'),
       (66, 'machoc', 'secretValue that should never appear to front'),
       (67, 'machopeur', 'secretValue that should never appear to front'),
       (68, 'mackogneur', 'secretValue that should never appear to front'),
       (69, 'chetiflor', 'secretValue that should never appear to front'),
       (70, 'boustiflor', 'secretValue that should never appear to front'),
       (71, 'empiflor', 'secretValue that should never appear to front'),
       (72, 'tentacool', 'secretValue that should never appear to front'),
       (73, 'tentacruel', 'secretValue that should never appear to front'),
       (74, 'racaillou', 'secretValue that should never appear to front'),
       (75, 'gravalanch', 'secretValue that should never appear to front'),
       (76, 'grolem', 'secretValue that should never appear to front'),
       (77, 'ponyta', 'secretValue that should never appear to front'),
       (78, 'galopa', 'secretValue that should never appear to front'),
       (79, 'ramoloss', 'secretValue that should never appear to front'),
       (80, 'flagadoss', 'secretValue that should never appear to front'),
       (81, 'magneti', 'secretValue that should never appear to front'),
       (82, 'magneton', 'secretValue that should never appear to front'),
       (83, 'canarticho', 'secretValue that should never appear to front'),
       (84, 'doduo', 'secretValue that should never appear to front'),
       (85, 'dodrio', 'secretValue that should never appear to front'),
       (86, 'otaria', 'secretValue that should never appear to front'),
       (87, 'lamantine', 'secretValue that should never appear to front'),
       (88, 'tadmorv', 'secretValue that should never appear to front'),
       (89, 'grotadmorv', 'secretValue that should never appear to front'),
       (90, 'kokiyas', 'secretValue that should never appear to front'),
       (91, 'crustabri', 'secretValue that should never appear to front'),
       (92, 'fantominus', 'secretValue that should never appear to front'),
       (93, 'spectrum', 'secretValue that should never appear to front'),
       (94, 'ectoplasma', 'secretValue that should never appear to front'),
       (95, 'onix', 'secretValue that should never appear to front'),
       (96, 'soporifik', 'secretValue that should never appear to front'),
       (97, 'hypnomade', 'secretValue that should never appear to front'),
       (98, 'krabby', 'secretValue that should never appear to front'),
       (99, 'krabboss', 'secretValue that should never appear to front'),
       (100, 'voltorbe', 'secretValue that should never appear to front'),
       (101, 'electrode', 'secretValue that should never appear to front'),
       (102, 'noeunoeuf', 'secretValue that should never appear to front'),
       (103, 'noadkoko', 'secretValue that should never appear to front'),
       (104, 'osselait', 'secretValue that should never appear to front'),
       (105, 'ossatueur', 'secretValue that should never appear to front'),
       (106, 'kicklee', 'secretValue that should never appear to front'),
       (107, 'tygnon', 'secretValue that should never appear to front'),
       (108, 'excelangue', 'secretValue that should never appear to front'),
       (109, 'smogo', 'secretValue that should never appear to front'),
       (110, 'smogogo', 'secretValue that should never appear to front'),
       (111, 'rhinocorne', 'secretValue that should never appear to front'),
       (112, 'rhinoferos', 'secretValue that should never appear to front'),
       (113, 'leveinard', 'secretValue that should never appear to front'),
       (114, 'saquedeneu', 'secretValue that should never appear to front'),
       (115, 'kangourex', 'secretValue that should never appear to front'),
       (116, 'hypotrempe', 'secretValue that should never appear to front'),
       (117, 'hypocean', 'secretValue that should never appear to front'),
       (118, 'poissirene', 'secretValue that should never appear to front'),
       (119, 'poissoroy', 'secretValue that should never appear to front'),
       (120, 'stari', 'secretValue that should never appear to front'),
       (121, 'staross', 'secretValue that should never appear to front'),
       (122, 'm. mime', 'secretValue that should never appear to front'),
       (123, 'insecateur', 'secretValue that should never appear to front'),
       (124, 'lippoutou', 'secretValue that should never appear to front'),
       (125, 'elektek', 'secretValue that should never appear to front'),
       (126, 'magmar', 'secretValue that should never appear to front'),
       (127, 'scarabrute', 'secretValue that should never appear to front'),
       (128, 'tauros', 'secretValue that should never appear to front'),
       (129, 'magicarpe', 'secretValue that should never appear to front'),
       (130, 'leviator', 'secretValue that should never appear to front'),
       (131, 'lokhlass', 'secretValue that should never appear to front'),
       (132, 'metamorph', 'secretValue that should never appear to front'),
       (133, 'evoli', 'secretValue that should never appear to front'),
       (134, 'aquali', 'secretValue that should never appear to front'),
       (135, 'voltali', 'secretValue that should never appear to front'),
       (136, 'pyroli', 'secretValue that should never appear to front'),
       (137, 'porygon', 'secretValue that should never appear to front'),
       (138, 'amonita', 'secretValue that should never appear to front'),
       (139, 'amonistar', 'secretValue that should never appear to front'),
       (140, 'kabuto', 'secretValue that should never appear to front'),
       (141, 'kabutops', 'secretValue that should never appear to front'),
       (142, 'ptera', 'secretValue that should never appear to front'),
       (143, 'ronflex', 'secretValue that should never appear to front'),
       (144, 'artikodin', 'secretValue that should never appear to front'),
       (145, 'electhor', 'secretValue that should never appear to front'),
       (146, 'sulfura', 'secretValue that should never appear to front'),
       (147, 'minidraco', 'secretValue that should never appear to front'),
       (148, 'draco', 'secretValue that should never appear to front'),
       (149, 'dracolosse', 'secretValue that should never appear to front'),
       (150, 'mewtwo', 'secretValue that should never appear to front'),
       (151, 'mew', 'secretValue that should never appear to front');


insert into type (id, libelle)
values (1, 'combat'),
       (2, 'dragon'),
       (3, 'eau'),
       (4, 'electrique'),
       (5, 'feu'),
       (6, 'glace'),
       (7, 'insecte'),
       (8, 'normal'),
       (9, 'plante'),
       (10, 'poison'),
       (11, 'psy'),
       (12, 'roche'),
       (13, 'sol'),
       (14, 'spectre'),
       (15, 'vol');


insert into is_type (id, pokemon_id, type_id)
values (1, 1, 9),
       (2, 1, 10),
       (3, 2, 9),
       (4, 2, 10),
       (5, 3, 9),
       (6, 3, 10),
       (7, 4, 5),
       (8, 5, 5),
       (9, 6, 5),
       (10, 6, 15),
       (11, 7, 3),
       (12, 8, 3),
       (13, 9, 3),
       (14, 10, 7),
       (15, 11, 7),
       (16, 12, 7),
       (17, 12, 15),
       (18, 13, 7),
       (19, 13, 10),
       (20, 14, 7),
       (21, 14, 10),
       (22, 15, 7),
       (23, 15, 10),
       (24, 16, 8),
       (25, 16, 15),
       (26, 17, 8),
       (27, 17, 15),
       (28, 18, 8),
       (29, 18, 15),
       (30, 19, 8),
       (31, 20, 8),
       (32, 21, 8),
       (33, 21, 15),
       (34, 22, 8),
       (35, 22, 15),
       (36, 23, 10),
       (37, 24, 10),
       (38, 25, 4),
       (39, 26, 4),
       (40, 27, 13),
       (41, 28, 13),
       (42, 29, 10),
       (43, 30, 10),
       (44, 31, 10),
       (45, 31, 13),
       (46, 32, 10),
       (47, 33, 10),
       (48, 34, 10),
       (49, 34, 13),
       (50, 35, 8),
       (51, 36, 8),
       (52, 37, 5),
       (53, 38, 5),
       (54, 39, 8),
       (55, 40, 8),
       (56, 41, 10),
       (57, 41, 15),
       (58, 42, 10),
       (59, 42, 15),
       (60, 43, 9),
       (61, 43, 10),
       (62, 44, 9),
       (63, 44, 10),
       (64, 45, 9),
       (65, 45, 10),
       (66, 46, 7),
       (67, 46, 9),
       (68, 47, 7),
       (69, 47, 9),
       (70, 48, 7),
       (71, 48, 10),
       (72, 49, 7),
       (73, 49, 10),
       (74, 50, 13),
       (75, 51, 13),
       (76, 52, 8),
       (77, 53, 8),
       (78, 54, 3),
       (79, 55, 3),
       (80, 56, 1),
       (81, 57, 1),
       (82, 58, 5),
       (83, 59, 5),
       (84, 60, 3),
       (85, 61, 3),
       (86, 62, 3),
       (87, 62, 1),
       (88, 63, 11),
       (89, 64, 11),
       (90, 65, 11),
       (91, 66, 1),
       (92, 67, 1),
       (93, 68, 1),
       (94, 69, 9),
       (95, 69, 10),
       (96, 70, 9),
       (97, 70, 10),
       (98, 71, 9),
       (99, 71, 10),
       (100, 72, 3),
       (101, 72, 10),
       (102, 73, 3),
       (103, 73, 10),
       (104, 74, 12),
       (105, 74, 13),
       (106, 75, 12),
       (107, 75, 13),
       (108, 76, 12),
       (109, 76, 13),
       (110, 77, 5),
       (111, 78, 5),
       (112, 79, 3),
       (113, 79, 11),
       (114, 80, 3),
       (115, 80, 11),
       (116, 81, 4),
       (117, 82, 4),
       (118, 83, 8),
       (119, 83, 15),
       (120, 84, 8),
       (121, 84, 15),
       (122, 85, 8),
       (123, 85, 15),
       (124, 86, 3),
       (125, 87, 3),
       (126, 87, 6),
       (127, 88, 10),
       (128, 89, 10),
       (129, 90, 3),
       (130, 91, 3),
       (131, 91, 6),
       (132, 92, 14),
       (133, 92, 10),
       (134, 93, 14),
       (135, 93, 10),
       (136, 94, 14),
       (137, 94, 10),
       (138, 95, 12),
       (139, 95, 13),
       (140, 96, 11),
       (141, 97, 11),
       (142, 98, 3),
       (143, 99, 3),
       (144, 100, 4),
       (145, 101, 4),
       (146, 102, 9),
       (147, 102, 11),
       (148, 103, 9),
       (149, 103, 11),
       (150, 104, 13),
       (151, 105, 13),
       (152, 106, 1),
       (153, 107, 1),
       (154, 108, 8),
       (155, 109, 10),
       (156, 110, 10),
       (157, 111, 13),
       (158, 111, 12),
       (159, 112, 13),
       (160, 112, 12),
       (161, 113, 8),
       (162, 114, 9),
       (163, 115, 8),
       (164, 116, 3),
       (165, 117, 3),
       (166, 118, 3),
       (167, 119, 3),
       (168, 120, 3),
       (169, 121, 3),
       (170, 121, 11),
       (171, 122, 11),
       (172, 123, 7),
       (173, 123, 15),
       (174, 124, 6),
       (175, 124, 11),
       (176, 125, 4),
       (177, 126, 5),
       (178, 127, 7),
       (179, 128, 8),
       (180, 129, 3),
       (181, 130, 3),
       (182, 130, 15),
       (183, 131, 3),
       (184, 131, 6),
       (185, 132, 8),
       (186, 133, 8),
       (187, 134, 3),
       (188, 135, 4),
       (189, 136, 5),
       (190, 137, 8),
       (191, 138, 12),
       (192, 138, 3),
       (193, 139, 12),
       (194, 139, 3),
       (195, 140, 12),
       (196, 140, 3),
       (197, 141, 12),
       (198, 141, 3),
       (199, 142, 12),
       (200, 142, 15),
       (201, 143, 8),
       (202, 144, 6),
       (203, 144, 15),
       (204, 145, 4),
       (205, 145, 15),
       (206, 146, 5),
       (207, 146, 15),
       (208, 147, 2),
       (209, 148, 2),
       (210, 149, 2),
       (211, 149, 15),
       (212, 150, 11),
       (213, 151, 11);

insert into team (id, trainer_id, pokemon_id, level)
values
    -- pierre: raccaillou 12, onix 14
    (1, 1, 74, 12),
    (2, 1, 95, 14),
    -- ondine: stari 18, staross 21
    (3, 2, 120, 18),
    (4, 2, 121, 21),
    -- major bob: voltorbe 21, pikachu 18, raichu 24
    (5, 3, 100, 21),
    (6, 3, 25, 18),
    (7, 3, 26, 24),
    -- erika: empiflor 29, saquedeneu 24, rafflesia 29
    (8, 4, 71, 29),
    (9, 4, 114, 24),
    (10, 4, 45, 29),
    -- koga: smogo 37, grotadmorv 39, smogo 37, smogogo 43
    (11, 5, 109, 37),
    (12, 5, 89, 39),
    (13, 5, 109, 37),
    (14, 5, 110, 43),
    -- morgane: kadabra 38, m.  mime 37, aeromite 38, alakazam 43
    (15, 6, 64, 38),
    (16, 6, 122, 37),
    (17, 6, 49, 38),
    (18, 6, 65, 43),
    -- auguste: caninos 42, ponyta 40, galopa 42, arcanin 47
    (19, 7, 58, 42),
    (20, 7, 77, 40),
    (21, 7, 78, 42),
    (22, 7, 59, 47),
    -- giovanni: rhinocorne 45, triopikeur 42, nidoqueen 44, nodiking 45, rhinoferos 50
    (23, 8, 111, 42),
    (24, 8, 51, 42),
    (25, 8, 31, 44),
    (26, 8, 34, 45),
    (27, 8, 112, 50),
    -- olga: lamantine 54, crustabri 53, flagadoss 54, lippoutou 56, lokhlass 56
    (28, 9, 87, 54),
    (29, 9, 91, 53),
    (30, 9, 80, 54),
    (31, 9, 124, 56),
    (32, 9, 131, 56),
    -- aldo: onix 53, tygnon 55, kicklee 55, onix 56, mackogneur 58
    (33, 10, 95, 53),
    (34, 10, 107, 55),
    (35, 10, 106, 55),
    (36, 10, 95, 56),
    (37, 10, 68, 58),

    -- agatha: ectoplasma 56, nosferalto 56, spectrum 55, arbok 58, ectoplasma 60
    (38, 11, 94, 56),
    (39, 11, 42, 56),
    (40, 11, 93, 55),
    (41, 11, 24, 58),
    (42, 11, 94, 60),
    -- peter: leviator 58, draco 56,  draco 56, ptera 60, dracolosse 62
    (43, 12, 130, 58),
    (44, 12, 148, 56),
    (45, 12, 148, 56),
    (46, 12, 142, 60),
    (47, 12, 149, 62)
;