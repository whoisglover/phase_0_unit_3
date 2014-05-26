# U3.W7: Designing Schemas


#### I worked on this challenge by myself.


## Release 0: Student Roster Schema
<<<<<<< HEAD
<!-- display your image inline here -->
![image](../imgs/1_student_roster.jpg)

## Release 1: One to Many Schema
<!-- display your image inline here -->
![image](../imgs/2_one_to_many.jpg)

## Release 2: One to One Schema
<!-- display your image inline here -->
![image](../imgs/3_one_to_one.jpg)

## Release 3: Many to Many Schema
<!-- display your image inline here -->
![image](../imgs/4_many_to_many.jpg)
=======
Image one:

![Student Roster Schema](https://github.com/lrakhman/phase_0_unit_3/blob/master/week_7/images/student%20roster%20schema.png?raw=true)

## Release 1: One to Many Schema
<!-- display your image inline here -->
![One to Many Schema](https://github.com/lrakhman/phase_0_unit_3/blob/master/week_7/images/One%20to%20Many%20Schema.png?raw=true)

## Release 2: One to One Schema
<!-- display your image inline here -->
![One to One Schema](https://github.com/lrakhman/phase_0_unit_3/blob/master/week_7/images/One%20to%20One%20Schema.png?raw=true)

## Release 3: Many to Many Schema
<!-- display your image inline here -->
![Many to Many Schema](https://github.com/lrakhman/phase_0_unit_3/blob/master/week_7/images/Many%20to%20Many%20Schema.png?raw=true)
>>>>>>> FETCH_HEAD


## Release 4: Design your own Schema
Description of what you're modeling: 
I decided to model a school.  For the many to many I represent classes and students.  Students are enrolled in many classes and each class has many students in it.  For the one to one schema I modeled schools and principals.  Each school has a single principal and each principal is responsible for one school. 

<<<<<<< HEAD
<!-- display your one-to-one image inline here -->
![image](../imgs/my_one_to_one.jpg)

<!-- display your many-to-many image inline here -->
![image](../imgs/my_many_to_many.jpg)

## Release 5: Reflection
This was a fun challenge.  Creating relational databases was part of my last job and I really enjoyed it.  My boss was a huge stickler for avoiding duplication of data.  This has given me some good habits for creating schemas that I’ve noticed a few of my peers at school don’t worry about.  I didn’t have any trouble completing this challenge and I didn’t use any resources outside of the instructions and examples provided on github.  I feel good about the learning competencies for this challenge.  On to the next one!
=======
For the top schema (the one to one model) I'm trying to model the fact that a user has many ratings, but that the ratings always belong to only one user. My idea was that if you were a tour guide, you would have rating from each tourist that used your services; therefore, one guide, many ratings. 

For the bottom schema (the many to many model) I'm trying to model the fact that a tour guide has many tourists, and that a tourist can employ multiple tour guides. A tourist can go to many different places, all with different guides, and a guide has many different tourists all the time. 

![My One to One, and Many to Many Schemas](https://github.com/lrakhman/phase_0_unit_3/blob/master/week_7/images/My%20own%20schemas.png?raw=true)

## Release 5: Reflection

This was great practice. I have very limited knowledge of databases and schemas, so this was a bit intimidating at first. After reading and re-reading, and looking up some other sources online, I can say that I understand all but the many-to-many relationships. Actually, to be more articulate, I UNDERSTAND the relationship, but I still have trouble envisioning the schema. For example, I had to adjust my many-to-many model because I wasn't quite sure how it would work if I did it the way I wanted, which was this: each guide has one rating (kind of like on Amazon, each vendor has an average rating), but that rating comes from multiple different ratings combined. And every guide AND every tourist has a rating, because guides get to rate tourists as well. I'm hoping this all becomes way more clear once we dive in and see it working in the real world. 
>>>>>>> FETCH_HEAD
