/*----------------------------------------------------------------------------
 *
 * fibonacci.c
 *   Fibonacci extension for PostgreSQL.
 *
 *----------------------------------------------------------------------------
 */
#include "postgres.h"
#include "fmgr.h"

PG_MODULE_MAGIC;

Datum fibonacci(PG_FUNCTION_ARGS);

PG_FUNCTION_INFO_V1(fibonacci);

Datum
fibonacci(PG_FUNCTION_ARGS)
{
    int32 arg = PG_GETARG_INT32(0);
    int32 i = 0;
    int32 j = 1;
    
    if (arg < 1) {
        PG_RETURN_INT32(0);
    }

    while (arg--) {
        int32 t = j;
        j = i + j;
        i = t;
    }

    PG_RETURN_INT32(i);
}
