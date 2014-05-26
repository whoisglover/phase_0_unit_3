# U3.W7: Intro to SQLite

## Release 0: Create a dummy database
<<<<<<< HEAD
<!-- paste your terminal output here -->
![image](../imgs/challenge_4/release_0.jpg)

## Release 1: Insert Data 
<!-- paste your terminal output here -->
![image](../imgs/challenge_4/release_1.jpg)
=======

```
sqlite> CREATE TABLE users (
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   first_name VARCHAR(64) NOT NULL,
   ...>   last_name  VARCHAR(64) NOT NULL,
   ...>   email VARCHAR(128) UNIQUE NOT NULL,
   ...>   created_at DATETIME NOT NULL,
   ...>   updated_at DATETIME NOT NULL
   ...> );
```
## Release 1: Insert Data 
>>>>>>> FETCH_HEAD

```
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-25 21:13:37  2014-04-25 21:13:37
2           Lana        Rakhman     lana.rakhman@gmail.co  2014-04-25 21:15:11  2014-04-25 21:15:11
```
## Release 2: Multi-line commands
<<<<<<< HEAD
<!-- paste your terminal output here -->
![image](../imgs/challenge_4/release_2.jpg)
## Release 3: Add a column
<!-- paste your terminal output here -->
![image](../imgs/challenge_4/release_3.jpg)

## Release 4: Change a value
<!-- paste your terminal output here -->
![image](../imgs/challenge_4/release_4.jpg)
## Release 5: Reflect


<!-- Add your reflection here -->
I felt very confident with this challenge. My previous experience in school and work creating SQL databases helped me greatly.  I generally feel good about creating tables and queries.
One issue I ran into was adding a new field that was not null.  If the table is already created sqlite is confused as to what to put for this value in all the existing entries since it cannot be null.   I did quite a bit of stack overflow research on this and didn't really find a lot of good solutions.  What I decided to do was provide a default value when I added the field.  In this case it was a nickname so I defaulted the value to ‘’.  This seemed to fix the error I was getting earlier.  I don’t think there is a much better work around especially if the table already has quite a bit of data (starting from scratch wouldn't make sense in that case).  Other than this oddity I felt very good about this challenge and enjoyed it.
=======

```
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
Error: column email is not unique
```
When creating the table, we specified "unique email", which is why it will not let us enter the same info twice. 

## Release 3: Add a column

```
sqlite> ALTER TABLE users ADD COLUMN nicknames VARCHAR(64) NOT NULL;
Error: Cannot add a NOT NULL column with default value NULL
sqlite> ALTER TABLE users ADD COLUMN nicknames VARCHAR(64);
sqlite> .schema
CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name VARCHAR(64) NOT NULL,
  last_name  VARCHAR(64) NOT NULL,
  email VARCHAR(128) UNIQUE NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL
, nicknames VARCHAR(64));
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nicknames
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-26 20:30:05  2014-04-26 20:30:05
2           Lana        Rakhman     lana.rakhman@gmail.co  2014-04-26 20:33:38  2014-04-26 20:33:38
sqlite> UPDATE users SET nicknames = 'kimbo' WHERE id = 1;
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nicknames
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-26 20:30:05  2014-04-26 20:30:05  kimbo
2           Lana        Rakhman     lana.rakhman@gmail.co  2014-04-26 20:33:38  2014-04-26 20:33:38
sqlite> UPDATE users SET nicknames = 'lanksy' WHERE id = 2;
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nicknames
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-26 20:30:05  2014-04-26 20:30:05  kimbo
2           Lana        Rakhman     lana.rakhman@gmail.co  2014-04-26 20:33:38  2014-04-26 20:33:38  lanksy
sqlite>
```

I had issues creating the 'nicknames' column 'not null'. I researched this issue, and it's a sqlite3 problem. Here is the best answer I found to tackle this problem (however, it's in regard to Rails, so not super useful in my situtation): [Stack Overflow Answer](http://stackoverflow.com/questions/3170634/how-to-solve-cannot-add-a-not-null-column-with-default-value-null-in-sqlite3)

## Release 4: Change a value
```
sqlite> UPDATE users SET nicknames = 'Ninja Coder', updated_at = DATETIME('now') WHERE id = 1;
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nicknames
----------  ----------  ----------  ---------------------  -------------------  -------------------  -----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-26 20:30:05  2014-04-26 21:06:17  Ninja Coder
2           Lana        Rakhman     lana.rakhman@gmail.co  2014-04-26 20:33:38  2014-04-26 20:33:38  lanksy
sqlite> UPDATE users SET nicknames = 'CODE GENIUS', updated_at = DATETIME('now') WHERE id = 2;
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nicknames
----------  ----------  ----------  ---------------------  -------------------  -------------------  -----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-26 20:30:05  2014-04-26 21:06:17  Ninja Coder
2           Lana        Rakhman     lana.rakhman@gmail.co  2014-04-26 20:33:38  2014-04-26 21:07:01  CODE GENIUS
```
## Release 5: Reflect

This was fun! Although I ran into a slight problem with the 'null' vs 'not null', it's nice to know that there is so much help for this online (and on stackoverflow.com). This was also an awesome learning exercise, because as someone that has no previous experience with database stuff, I can now: make a table, update a table, delete a table, delete parts of a table, query a table, and understand what a schema is! That's a lot of great stuff to know; I'm sure it gets more complicated in the future, but yay for this much knowledge so far!
>>>>>>> FETCH_HEAD
