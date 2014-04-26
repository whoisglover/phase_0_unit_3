# U3.W7: Intro to SQLite

## Release 0: Create a dummy database

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

```
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-25 21:13:37  2014-04-25 21:13:37
2           Lana        Rakhman     lana.rakhman@gmail.co  2014-04-25 21:15:11  2014-04-25 21:15:11

```
## Release 2: Multi-line commands

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
<!-- Add your reflection here -->