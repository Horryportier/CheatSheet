```bash
surreal start --log debug --user root --pass root memory
[2022-07-28 15:50:34] INFO  surrealdb::iam Root authentication is enabled
[2022-07-28 15:50:34] INFO  surrealdb::dbs Database strict mode is disabled
[2022-07-28 15:50:34] INFO  surrealdb::kvs Starting kvs store in memory
[2022-07-28 15:50:34] INFO  surrealdb::kvs Started kvs store in memory
[2022-07-28 15:50:34] INFO  surrealdb::net Starting web server on 0.0.0.0:8000
[2022-07-28 15:50:34] INFO  surrealdb::net Started web server on 0.0.0.0:8000
``` 
```bash
DATA="SELECT * FROM author WHERE author.name == LOL FETCH author;"
curl --request POST \
	--header "Accept: application/json" \
	--header "NS: test" \
	--header "DB: test" \
	--user "root:root" \
	--data "${DATA}" \
	http://localhost:8000/sql
```

[[SurrealDB]]