# Looking in which build system we are
BUILD_SYSTEM := $(shell lsb_release --short --id)

all:
	$(MAKE) -C casper-md5check
	set -e; \
	for x in bin/* scripts/casper scripts/casper-bottom/* \
	         ubiquity-hooks/*; do \
		sh -n $$x; \
	done

clean:
	$(MAKE) -C casper-md5check clean
