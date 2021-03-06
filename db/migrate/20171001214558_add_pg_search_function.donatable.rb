# This migration comes from donatable (originally 20171001214512)
class AddPgSearchFunction < ActiveRecord::Migration[5.1]
  def change
    execute """CREATE OR REPLACE FUNCTION pg_search_dmetaphone(text) RETURNS text LANGUAGE SQL IMMUTABLE STRICT AS $function$
                SELECT array_to_string(ARRAY(SELECT dmetaphone(unnest(regexp_split_to_array($1, E'\\s+')))), ' ')
              $function$;"""
  end
end
