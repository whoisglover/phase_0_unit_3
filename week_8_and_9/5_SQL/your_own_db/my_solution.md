<!-- ## Show the terminal output here.  -->

This is my database schema:

![Schema](https://github.com/lrakhman/phase_0_unit_3/blob/master/week_8_and_9/5_SQL/your_own_db/database%20schema.png?raw=true)

This is my terminal output:

```
sqlite> CREATE TABLE users (
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   first_name VARCHAR(64) NOT NULL,
   ...>   last_name  VARCHAR(64) NOT NULL,
   ...>   email VARCHAR(128) UNIQUE NOT NULL,
   ...>   created_at DATETIME NOT NULL,
   ...>   updated_at DATETIME NOT NULL
   ...> );

sqlite> CREATE TABLE user_places (
   ...> id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...> user_id INTEGER,
   ...> places_id INTEGER,
   ...> FOREIGN KEY(user_id) REFERENCES users(userid),
   ...> FOREIGN KEY(places_id) REFERENCES places(placeid)
   ...> );

sqlite> CREATE TABLE places (
   ...> id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...> city_name VARCHAR(64) NOT NULL,
   ...> state_name VARCHAR(64) NOT NULL,
   ...> created_at DATETIME NOT NULL,
   ...> updated_at DATETIME NOT NULL
   ...> );

sqlite> .schema

CREATE TABLE places (
id INTEGER PRIMARY KEY AUTOINCREMENT,
city_name VARCHAR(64) NOT NULL,
state_name VARCHAR(64) NOT NULL,
created_at DATETIME NOT NULL,
updated_at DATETIME NOT NULL
);

CREATE TABLE user_places (
id INTEGER PRIMARY KEY AUTOINCREMENT,
user_id INTEGER,
places_id INTEGER,
FOREIGN KEY(user_id) REFERENCES users(userid),
FOREIGN KEY(places_id) REFERENCES places(placeid)
);

CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name VARCHAR(64) NOT NULL,
  last_name  VARCHAR(64) NOT NULL,
  email VARCHAR(128) UNIQUE NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL
);
```
Adding users/places:

```
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Lana', 'Rakhman', 'lana.rakhman@gmail.com', DATETIME('now'), DATETIME('now'));
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Zac', 'Schaefer', 'zjs@gmail.com', DATETIME('now'), DATETIME('now'));
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmy', 'Miller', 'kimmy@gmail.com', DATETIME('now'), DATETIME('now'));
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Ted', 'Hughes', 'tedd@gmail.com', DATETIME('now'), DATETIME('now'));
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Claudia', 'Rodriguez', 'claudia@gmail.com', DATETIME('now'), DATETIME('now'));
sqlite> SELECT * FROM users
   ...> ;

id          first_name  last_name   email                   created_at           updated_at
----------  ----------  ----------  ----------------------  -------------------  -------------------
1           Lana        Rakhman     lana.rakhman@gmail.com  2014-05-09 19:27:14  2014-05-09 19:27:14
2           Zac         Schaefer    zjs@gmail.com           2014-05-09 19:28:29  2014-05-09 19:28:29
3           Kimmy       Miller      kimmy@gmail.com         2014-05-09 19:29:00  2014-05-09 19:29:00
4           Ted         Hughes      tedd@gmail.com          2014-05-09 19:29:44  2014-05-09 19:29:44
5           Claudia     Rodriguez   claudia@gmail.com       2014-05-09 19:30:42  2014-05-09 19:30:42
```
```
sqlite> INSERT INTO places
   ...> (city_name, state_name, created_at, updated_at)
   ...> VALUES
   ...> ('Chicago', 'IL', DATETIME('now'), DATETIME ('now'));
sqlite> INSERT INTO places
   ...> (city_name, state_name, created_at, updated_at)
   ...> VALUES
   ...> ('San Francisco', 'CA', DATETIME('now'), DATETIME ('now'));
sqlite> INSERT INTO places
   ...> (city_name, state_name, created_at, updated_at)
   ...> VALUES
   ...> ('New York', 'NY', DATETIME('now'), DATETIME ('now'));
sqlite> INSERT INTO places
   ...> (city_name, state_name, created_at, updated_at)
   ...> VALUES
   ...> ('Seattle', 'WA', DATETIME('now'), DATETIME ('now'));
sqlite> INSERT INTO places
   ...> (city_name, state_name, created_at, updated_at)
   ...> VALUES
   ...> ('Austin', 'TX', DATETIME('now'), DATETIME ('now'));
sqlite> SELECT * FROM places
   ...> ;
id          city_name   state_name  created_at           updated_at
----------  ----------  ----------  -------------------  -------------------
1           Chicago     IL          2014-05-09 19:33:21  2014-05-09 19:33:21
2           San Franci  CA          2014-05-09 19:33:55  2014-05-09 19:33:55
3           New York    NY          2014-05-09 19:34:22  2014-05-09 19:34:22
4           Seattle     WA          2014-05-09 19:35:24  2014-05-09 19:35:24
5           Austin      TX          2014-05-09 19:35:57  2014-05-09 19:35:57
```

Reflection:

This was great practice. However, I still have some questions. I'm pretty sure I "joined" the tables together through the FOREIGN KEY/REFERENCES commands, but I'm really not sure. I researched this quite a bit online, and every time I would search the word 'join' the results were not what I was looking for. I then researched how to make a foreign key (which is what I assume the assignment is asking us to do, although the instructions are poorly worded), and so the above is what I found. I hope it's right!
