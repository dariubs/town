\echo Use "CREATE EXTENSION base36" to load this file. \quit

CREATE OR REPLACE FUNCTION create_town_table(t_name varchar(30))
  RETURNS VOID
  LANGUAGE plpgsql AS
$func$
BEGIN
   EXECUTE format('
      CREATE TABLE IF NOT EXISTS %I (
       id serial PRIMARY KEY,
       ts timestamp,
       tag varchar(30),
       data jsonb
      )', t_name);
END
$func$;