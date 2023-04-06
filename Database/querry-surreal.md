-  SELECT 
```sql 
/* 
queries and returns all articles with all thier's data
*/

SELECT * FROM article;
SELECT * FROM article, account; -- u can also querry multtiple one's
```

- related record and graph connections
```sql
/*
it allows you to travers realetd records withou  [[database-joints]] 
it will feach alticles and filter by the age of the author
*/

SELECT * FROM article WHERE author.age < 30 FETCH author, account;
```