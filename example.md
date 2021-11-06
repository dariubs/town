example
=======

create town table
-----------------

```sql
SELECT create_town_table('table_name');
```

insert
------

Insert to town table:

```sql
INSERT INTO
    table_name(ts, tags, data)
VALUES
    (Now(), '{town, db, timeseries}', '{"val": 21324}');
```

select by tag
-------------

```sql
SELECT
    ts, tags, data->>'val'
FROM
    table_name
WHERE
    'town'=ANY(tags);
```

select in time range
--------------------

```sql
SELECT
    ts, tags, data->>'val'
FROM
    table_name
WHERE
    ts BETWEEN '2021-08-02 00:00:00'::timestamp AND Now()::timestamp;
```