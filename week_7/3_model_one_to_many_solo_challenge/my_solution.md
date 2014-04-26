# U3.W7: Modeling a Real-World Database (SOLO CHALLENGE)

## Release 0: Users Fields
1. Username
2. Email
3. Name
4. Location
5. Website
6. Bio
7. Following
8. Followers
9. Favorites
10. Lists

## Release 1: Tweet Fields

1. Text (upto 140 characters, but at least 1 character)
2. Photo
3. Location

## Release 2: Explain the relationship
The relationship between `users` and `tweets` is: 

Each user has many tweets, but each tweet belongs to only one user, so it's a one-to-many relationship. 

## Release 3: Schema Design
![Twitter One to Many Schema](https://github.com/lrakhman/phase_0_unit_3/blob/master/week_7/images/Twitter%20One%20to%20Many%20Schema.png?raw=true)

## Release 4: SQL Statements
<!-- Include your SQL Statements. How can you make markdown files show blocks of code? -->
1. SELECT * FROM tweets WHERE user_id = 1 (or any number)
2. SELECT * FROM tweets WHERE created_at >= '4/15/2014 12:00:00 AM' 
3. SELECT * FROM tweets JOIN users ON user_id = id WHERE twitter_handle = "lrock"
4. SELECT twitter_handle FROM users JOIN tweets ON id = user_id WHERE id = 5

## Release 5: Reflection

This was a good exercise, but the SQL statements part was the only one that gave me trouble. I'm not really comfortable with them yet, and because I can't see the results, I'm not sure that they're even right. I ended up trying to research join, since that seems to be how to get info from more than one table, but it only confused me further. Oh well, patience and practice, I guess. 