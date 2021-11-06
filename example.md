example
=======

Create town table:

```sql
SELECT create_town_table('table_name');
```

Insert to town table:

```sql
INSERT INTO table_name(ts, tag, data) VALUES (Now(), 'town', '{"val": 21324}')
```

Select town data:

```sql
SELECT ts, tag, data->>'val' from table_name where tag = 'town'
```