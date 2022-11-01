DB=enceladus
BUILD=${CURDIR}/build.sql
SCRIPTS=${CURDIR}/scripts
CSV='${CURDIR}/data/master_plan.csv'
INMSCSV='${CURDIR}/data/inms.csv'
MASTER=$(SCRIPTS)/import.sql
NORMALIZE=$(SCRIPTS)/normalize.sql
USER=postgres


all: clean normalize
	psql -U $(USER) -d $(DB) -f $(BUILD)

master: 
	@cat $(MASTER) >> $(BUILD)

import: master
	@echo "COPY import.master_plan FROM $(CSV) WITH DELIMITER ',' HEADER CSV;" >> $(BUILD)
	@echo "COPY import.inms FROM $(INMSCSV) WITH DELIMITER ',' HEADER CSV;" >> $(BUILD)

normalize: import
	@cat $(NORMALIZE) >> $(BUILD)

clean: 
	@rm -rf $(BUILD)