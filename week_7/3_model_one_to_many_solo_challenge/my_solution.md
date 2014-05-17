# U3.W7: Modeling a Real-World Database (SOLO CHALLENGE)

## Release 0: Users Fields
User fields Twitter collects:


1. number_of_tweets (integer)
2. number_following (integer)
3. number_followers (integer)
4. name (string)
5. user_name (string)
6. location (string)
7. created_at (DateTime)
8. updated_at (DateTime)
## Release 1: Tweet Fields
Fields Twitter uses to represent/display a tweet:

1. user_name (string)
2. location (string)
3. tweet_content (string)
4. created_at (DateTime)
5. updated_at (DateTime)

## Release 2: Explain the relationship
The relationship between `users` and `tweets` is: One-to-Many because each user can have many tweets, but each tweet is associated with only one user.


## Release 3: Schema Design
![twitter](../imgs/twitter.png)

## Release 4: SQL Statements
<!-- Include your SQL Statements. How can you make markdown files show blocks of code? -->

## Release 5: Reflection
<!-- Be sure to add your reflection here!!! -->