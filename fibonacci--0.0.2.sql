-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION fibonacci" to load this file. \quit
CREATE FUNCTION fibonacci(n INTEGER)
RETURNS INTEGER AS '$libdir/fibonacci'
LANGUAGE C IMMUTABLE STRICT;
