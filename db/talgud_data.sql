INSERT INTO public."user" (id, username, password) VALUES (DEFAULT, 'Triin123', 'student123');
INSERT INTO public."user" (id, username, password) VALUES (DEFAULT, 'priitrs', 'student123');
INSERT INTO public."user" (id, username, password) VALUES (DEFAULT, 'lauris', 'student123');

INSERT INTO public.project (id, name, address, start_time, end_time, longitude, latitude) VALUES (DEFAULT, 'IT-talgud', 'Uus 12, Tallinn', '2022-06-01 09:00:00.000000', '2022-06-01 16:30:00.000000', 59.437782, 24.750038);
INSERT INTO public.project (id, name, address, start_time, end_time, longitude, latitude) VALUES (DEFAULT, 'Laste mängumaja talgud', 'Ansi talu, Tartumaa ', '2022-06-24 10:00:00.000000', '2022-06-26 18:00:00.000000', 58.275331, 27.058979);
INSERT INTO public.project (id, name, address, start_time, end_time, longitude, latitude) VALUES (DEFAULT, 'Teeme ära talgud', 'Lihula', '2021-05-01 12:00:00.000000', '2021-05-01 18:00:00.000000', 58.690203, 23.819705);
INSERT INTO public.project (id, name, address, start_time, end_time, longitude, latitude) VALUES (DEFAULT, 'Kanali puhastamine', 'Piirissaare', '2021-08-27 10:00:00.000000', '2021-08-27 17:00:00.000000', 58.376747, 27.510993);

INSERT INTO public.role (id, name) VALUES (DEFAULT, 'administrator');
INSERT INTO public.role (id, name) VALUES (DEFAULT, 'user');

INSERT INTO public.user_role (id, role_id, user_id) VALUES (DEFAULT, 1, 2);
INSERT INTO public.user_role (id, role_id, user_id) VALUES (DEFAULT, 2, 1);
INSERT INTO public.user_role (id, role_id, user_id) VALUES (DEFAULT, 2, 3);

INSERT INTO public.contact (id, user_id, first_name, last_name, telephone, email) VALUES (DEFAULT, 1, 'Triin', 'Sagur', '1234567', 'triin@internet.ee');
INSERT INTO public.contact (id, user_id, first_name, last_name, telephone, email) VALUES (DEFAULT, 2, 'Priit', 'Roosmäe', '2345678', 'priit@kodu.com');
INSERT INTO public.contact (id, user_id, first_name, last_name, telephone, email) VALUES (DEFAULT, 3, 'Lauri', 'Sõõro', '3456789', 'lauri@majataga.du');

INSERT INTO public.project_user (id, project_id, user_id, is_moderator) VALUES (DEFAULT, 1, 3, true);
INSERT INTO public.project_user (id, project_id, user_id, is_moderator) VALUES (DEFAULT, 1, 2, false);
INSERT INTO public.project_user (id, project_id, user_id, is_moderator) VALUES (DEFAULT, 2, 1, true);
INSERT INTO public.project_user (id, project_id, user_id, is_moderator) VALUES (DEFAULT, 2, 3, false);
INSERT INTO public.project_user (id, project_id, user_id, is_moderator) VALUES (DEFAULT, 2, 2, false);
INSERT INTO public.project_user (id, project_id, user_id, is_moderator) VALUES (DEFAULT, 1, 1, false);
INSERT INTO public.project_user (id, project_id, user_id, is_moderator) VALUES (DEFAULT, 3, 1, true);
INSERT INTO public.project_user (id, project_id, user_id, is_moderator) VALUES (DEFAULT, 4, 3, true);
INSERT INTO public.project_user (id, project_id, user_id, is_moderator) VALUES (DEFAULT, 3, 2, false);

INSERT INTO public.task (id, project_id, responsible_user_id, name) VALUES (DEFAULT, 1, null, 'nina nokkimine');
INSERT INTO public.task (id, project_id, responsible_user_id, name) VALUES (DEFAULT, 2, null, 'rehvi pumpamine');
INSERT INTO public.task (id, project_id, responsible_user_id, name) VALUES (DEFAULT, 3, null, 'lohe lennutamine');
INSERT INTO public.task (id, project_id, responsible_user_id, name) VALUES (DEFAULT, 4, null, 'päevitamine');

INSERT INTO public.resource (id, project_id, responsible_user_id, name) VALUES (DEFAULT, 1, null, 'Järelkäru');
INSERT INTO public.resource (id, project_id, responsible_user_id, name) VALUES (DEFAULT, 2, null, 'Luuad');
INSERT INTO public.resource (id, project_id, responsible_user_id, name) VALUES (DEFAULT, 3, null, 'Kõblas');
INSERT INTO public.resource (id, project_id, responsible_user_id, name) VALUES (DEFAULT, 4, null, 'Saunalina');