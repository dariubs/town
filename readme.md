towndb
======

Manage timeseries data easily in postgresql

install
-------

You need to have postgresql on your system. At first, build and add town extension to your postgres:

```bash
make install
```

then login to your postgres and enable town:

```plpgsql
CREATE EXTENSION town;
```

now you can create town table in any of your databases:

```sql
select create_town_table(table_name);
```

example
-------

[town examples](example.md)




