-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION fibonacci" to load this file. \quit
CREATE FUNCTION fibonacci(n INTEGER)
RETURNS INTEGER
LANGUAGE plpgsql IMMUTABLE STRICT
    AS $$
    DECLARE
        counter INTEGER := 0;
        i INTEGER := 0;
        j INTEGER := 1;
    BEGIN

        IF n < 1 THEN
        RETURN 0;
        END IF;

        WHILE counter < n LOOP
        counter := counter + 1;
        SELECT j, i + j INTO i, j;
        END LOOP;

        RETURN i;
    END;
    $$;
