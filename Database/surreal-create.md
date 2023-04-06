- Inserting data
```sql
/* Inserting data
surruealDB rus in sheameless mode from the start and creates tabels and fields on the fly.
*/

CREATE account SET name = 'CHAD', created_at = time::now();
```

- Id's 
```sql
/*
surrealDB cerates id when not specyifed,
use : to asingn specific id.
*/
CREATE author:john SET
	name.first = 'John',
	name.last = 'Adams',
	name.full = string::join(' ', name.first, name.last),
	age = 29,
	admin = true,
	signup_at = time::now()
;
```

- linking tables 
```sql
/*
in this exp author is linked directly by id but account is queried 
*/
CREATE article SET
	created_at = time::now(),
	author = author:john,
	title = 'Lorem ipsum dolor',
	text = 'Donec eleifend, nunc vitae commodo accumsan, mauris est fringilla.',
	account = (SELECT id FROM account WHERE name = 'ACME Inc' LIMIT 1);
```
