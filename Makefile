EXTENSION = fibonacci        # the extensions name
DATA = fibonacci--0.0.2.sql  # script files to install
REGRESS = fibonacci_test     # our test script file (without extension)

# postgres build stuff
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
