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

INSERT INTO tb_enrollment(user_id,offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1,1,TIMESTAMP WITH TIME ZONE '2022-08-06T20:50:07.12345Z',null,true,false);
INSERT INTO tb_enrollment(user_id,offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2,1,TIMESTAMP WITH TIME ZONE '2022-08-06T20:50:07.12345Z',null,true,false);

INSERT INTO tb_lesson(title,position,section_id) VALUES ('Aula 1 do capítulo 1',1,1);
INSERT INTO tb_content(id,text_content,video_uri) VALUES (1,'Material de Apoio: ABC','https://www.youtube.com/watch?v=wvbUZpkbLas');

INSERT INTO tb_lesson(title,position,section_id) VALUES ('Aula 2 do capítulo 1',2,1);
INSERT INTO tb_content(id,text_content,video_uri) VALUES (2,'','https://www.youtube.com/watch?v=wvbUZpkbLas');

INSERT INTO tb_lesson(title,position,section_id) VALUES ('Aula 3 do capítulo 1',3,1);
INSERT INTO tb_content(id,text_content,video_uri) VALUES (3,'','https://www.youtube.com/watch?v=wvbUZpkbLas');

INSERT INTO tb_lesson(title,position,section_id) VALUES ('Tarefa do capítulo 1',4,1);
INSERT INTO tb_task(id,description,question_count,approval_count,weight,due_date) VALUES (4,'Fazer um trabalho legal',5,4,1.0,TIMESTAMP WITH TIME ZONE '2022-08-27T20:50:07.12345Z');

INSERT INTO tb_lessons_done(lesson_id, user_id, offer_id) VALUES (1,1,1);
INSERT INTO tb_lessons_done(lesson_id, user_id, offer_id) VALUES (2,1,1);
INSERT INTO tb_lessons_done(lesson_id, user_id, offer_id) VALUES (3,1,1);
INSERT INTO tb_lessons_done(lesson_id, user_id, offer_id) VALUES (4,1,1);

INSERT INTO tb_notification(text, moment, read, route, user_id) VALUES ('Primeiro feedback',TIMESTAMP WITH TIME ZONE '2022-08-27T20:50:07.12345Z',true,'/offers/1/resource/1/sections/1',1);
INSERT INTO tb_notification(text, moment, read, route, user_id) VALUES ('Segundo feedback',TIMESTAMP WITH TIME ZONE '2022-08-27T20:50:07.12345Z',true,'/offers/1/resource/1/sections/1',1);
INSERT INTO tb_notification(text, moment, read, route, user_id) VALUES ('Terceiro feedback',TIMESTAMP WITH TIME ZONE '2022-08-27T20:50:07.12345Z',false,'/offers/1/resource/1/sections/1',1);

INSERT INTO tb_deliver(uri, moment, status, feedback, correct_count, lesson_id, user_id, offer_id) VALUES ('https://github.com/adrianoabreu/devsuperior-dslearn',TIMESTAMP WITH TIME ZONE '2022-08-27T20:50:07.12345Z', 0, null, null, 4, 1, 1);

INSERT INTO tb_topic(title,body,moment,author_id,offer_id,lesson_id) VALUES ('Título topico 1','Corpo do Topico 1',TIMESTAMP WITH TIME ZONE '2022-08-27T20:50:07.12345Z',1,1,1);
INSERT INTO tb_topic(title,body,moment,author_id,offer_id,lesson_id) VALUES ('Título topico 2','Corpo do Topico 2',TIMESTAMP WITH TIME ZONE '2022-08-27T20:50:07.12345Z',2,1,1);
INSERT INTO tb_topic(title,body,moment,author_id,offer_id,lesson_id) VALUES ('Título topico 3','Corpo do Topico 3',TIMESTAMP WITH TIME ZONE '2022-08-27T20:50:07.12345Z',2,1,1);
INSERT INTO tb_topic(title,body,moment,author_id,offer_id,lesson_id) VALUES ('Título topico 4','Corpo do Topico 4',TIMESTAMP WITH TIME ZONE '2022-08-27T20:50:07.12345Z',1,1,2);
INSERT INTO tb_topic(title,body,moment,author_id,offer_id,lesson_id) VALUES ('Título topico 5','Corpo do Topico 5',TIMESTAMP WITH TIME ZONE '2022-08-27T20:50:07.12345Z',1,1,2);
INSERT INTO tb_topic(title,body,moment,author_id,offer_id,lesson_id) VALUES ('Título topico 6','Corpo do Topico 6',TIMESTAMP WITH TIME ZONE '2022-08-27T20:50:07.12345Z',2,1,3);

INSERT INTO tb_topic_likes(topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes(topic_id, user_id) VALUES (2, 1);

INSERT INTO tb_reply(body, moment, topic_id, author_id) VALUES ('Corpo da resposta 1',TIMESTAMP WITH TIME ZONE '2022-08-27T20:50:07.12345Z',1,2);
INSERT INTO tb_reply(body, moment, topic_id, author_id) VALUES ('Corpo da resposta 2',TIMESTAMP WITH TIME ZONE '2022-08-27T20:50:07.12345Z',1,1);

INSERT INTO tb_reply_likes(reply_id, user_id) VALUES (1,1);







