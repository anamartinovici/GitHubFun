all: tmp/analyze_data

tmp/analyze_data: tmp/process_data \
									src/analyze_data.R
	$(print-target-and-prereq-info)
	Rscript src/analyze_data.R
	date > $@
	@echo ""
	
tmp/process_data: data/simulated_data.csv \
									src/create_processed_data.R
	$(print-target-and-prereq-info)
	mkdir -p ./tmp
	Rscript src/create_processed_data.R
	date > $@
	@echo ""


# define macros
define print-target-and-prereq-info
	@echo ""
	@echo "Target is:"
	echo $@
	@echo ""
	@echo "All prerequisites for this target are:"
	echo $^
	@echo ""
	@echo "The prerequisites newer than the target are:"
	echo $?
	@echo ""
endef