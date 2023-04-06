# <a href="https://surrealdb.com/docs"> <div align="center"> <img width=50px src="https://surrealdb.com/static/img/assets/icon/icon-6d4d13d712a2029462e7e314f18e1b38.png"><P> SurrealDB</P> </div></a>
## [[how to run as root and connect using curl]]


## <div align="center" style="color: #AC00FA"> <h2>BASICS</h2></div>
```sql
/* Inserting data

By default, SurrealDB doesn't need to have tables or fields defined before inserting data. Instead the database can be queried in schemaless mode, and tables are created ad hoc. In this guide, we will be running all queries in schemaless mode.
*/
CREATE account SET name = 'CHAD', created_at = time::now();
```
