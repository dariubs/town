example
=======

Create town table:

```sql
SELECT create_town_table('table_name');
```

Insert to town table:

```sql
INSERT INTO table_name(ts, tags, data) VALUES (Now(), '{town, db, timeseries}', '{"val": 21324}')
```

Select town data:

```sql
SELECT ts, tags, data->>'val' from table_name where 'town'=ANY(tags)
```