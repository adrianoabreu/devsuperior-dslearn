INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Green', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_OPERATOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course(name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML','https://upload.wikimedia.org/wikipedia/commons/6/61/HTML5_logo_and_wordmark.svg','http://fabrica.ms.senac.br/wp-content/uploads/2015/06/Como-adicionar-fontes-diferentes-no-HTML-1.jpg');

INSERT INTO tb_offer(edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2022-08-06T20:50:07.12345Z', TIMESTAMP WITH TIME ZONE '2022-08-10T20:50:07.12345Z', 1);
INSERT INTO tb_offer(edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2022-08-06T20:50:07.12345Z', TIMESTAMP WITH TIME ZONE '2022-08-10T20:50:07.12345Z', 1);

INSERT INTO tb_resource(title,description,position,img_Uri,type, offer_id) VALUES ('Trilha HTML','Trilha principal do curso',1,'https://upload.wikimedia.org/wikipedia/commons/6/61/HTML5_logo_and_wordmark.svg',1,1);
INSERT INTO tb_resource(title,description,position,img_Uri,type, offer_id) VALUES ('Forum','Tire suas duvidas',2,'https://upload.wikimedia.org/wikipedia/commons/6/61/HTML5_logo_and_wordmark.svg',2,1);
INSERT INTO tb_resource(title,description,position,img_Uri,type, offer_id) VALUES ('Live Bonus','Live exclusiva para alunos',3,'https://upload.wikimedia.org/wikipedia/commons/6/61/HTML5_logo_and_wordmark.svg',0,1);


INSERT INTO tb_section(title,description,position,img_Uri,resource_id,prerequisite_id) VALUES ('Capitulo 1','Neste Capitulo vamos começar',1,'https://upload.wikimedia.org/wikipedia/commons/6/61/HTML5_logo_and_wordmark.svg',1,null);
INSERT INTO tb_section(title,description,position,img_Uri,resource_id,prerequisite_id) VALUES ('Capitulo 2','Neste Capitulo vamos aprender coisas novas',2,'https://upload.wikimedia.org/wikipedia/commons/6/61/HTML5_logo_and_wordmark.svg',1,1);
INSERT INTO tb_section(title,description,position,img_Uri,resource_id,prerequisite_id) VALUES ('Capitulo 3','Neste Capitulo vamos aprender coisas novas',3,'https://upload.wikimedia.org/wikipedia/commons/6/61/HTML5_logo_and_wordmark.svg',1,2);
