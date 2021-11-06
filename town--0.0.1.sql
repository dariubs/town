\echo Use "CREATE EXTENSION town" to load this file. \quit

CREATE OR REPLACE FUNCTION create_town_table(t_name varchar(30))
  RETURNS VOID
  LANGUAGE plpgsql AS
$func$
BEGIN
   EXECUTE format('
      CREATE TABLE IF NOT EXISTS %I (
       id BIGSERIAL PRIMARY KEY,
       ts TIMESTAMP WITH TIME ZONE,
       tags TEXT[],
       data JSONB default ''{}''::jsonb
      );
      ', t_name, t_name);
END
$func$;