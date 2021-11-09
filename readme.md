towndb
======
[![test towndb](https://github.com/dariubs/town/actions/workflows/test.yml/badge.svg)](https://github.com/dariubs/town)

Postgres extension for manage time-series data

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

town by exaple
-------

[towndb by examples](docs/example.md)


License
-------

[MIT License](license.md)




