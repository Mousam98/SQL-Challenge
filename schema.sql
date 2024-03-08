-- DO NOT CHANGE ANYTHING HERE. All work should be done in the "Query SQL" section on the right.

-- Create two tables: these are highly simplified versions of real tables
CREATE TABLE users (
  id int,
  first_name varchar (30),
  last_name varchar(150),
  country varchar(2)
);

CREATE TABLE interactions (
  id int,
  timestamp timestamp,
  action varchar(150),
  user_id int
);


INSERT INTO users (id, first_name, last_name, country) VALUES
  (1, 'Sophie', 'Germain', 'AU'),
  (2, 'Ada', 'Lovelace', 'AU'),
  (3, 'Dorothy', 'Vaughan', 'US'),
  (4, 'Katherine', 'Johnson', 'US'),
  (5, 'Zhenyi', 'Wang', 'AU')
;


INSERT INTO interactions (id, timestamp, action, user_id) VALUES
  (1, '2023-08-03 09:05:03', 'hint', 3),
  (2, '2023-08-03 09:07:53', 'incorrect', 3),
  (3, '2023-08-03 09:10:15', 'video', 3),
  (4, '2023-08-03 09:12:13', 'correct', 3),
  (5, '2023-08-03 10:36:12', 'incorrect', 2),
  (6, '2023-08-03 11:15:16', 'video', 2),
  (7, '2023-08-03 11:18:12', 'correct', 2),
  (8, '2023-08-05 02:17:12', 'video', 4),
  (9, '2023-08-05 02:17:17', 'hint', 4),
  (10, '2023-08-05 02:18:05', 'correct', 4),
  (11, '2023-08-05 02:18:07', 'video', 4),
  (12, '2023-08-05 02:18:11', 'correct', 4),
  (13, '2023-08-05 02:22:34', 'incorrect', 1),
  (14, '2023-08-05 02:26:46', 'correct', 4),
  (15, '2023-08-13 15:13:12', 'hint', 5),
  (16, '2023-08-13 15:18:16', 'hint', 5),
  (17, '2023-08-13 15:21:45', 'incorrect', 5),
  (18, '2023-08-13 15:27:13', 'hint', 5),
  (19, '2023-08-13 15:31:08', 'incorrect', 5),
  (20, '2023-08-15 08:13:12', 'incorrect', 1),
  (21, '2023-09-04 10:15:13', 'hint', 4),
  (22, '2023-09-04 10:20:18', 'incorrect', 4),
  (23, '2023-09-04 10:22:01', 'correct', 4),
  (24, '2023-09-07 15:13:52', 'incorrect', 4),
  (25, '2023-09-07 15:13:59', 'correct', 4),
  (26, '2023-09-08 11:43:13', 'incorrect', 2),
  (27, '2023-09-08 11:44:18', 'hint', 2),
  (28, '2023-09-08 11:46:45', 'incorrect', 2),
  (29, '2023-09-15 07:12:13', 'hint', 4),
  (30, '2023-09-15 08:13:12', 'correct', 4)
;  