all: tmp/analyze_data

tmp/analyze_data: tmp/process_data \
									src/analyze_data.R
	Rscript src/analyze_data.R
	date > $@
	
tmp/process_data: data/raw_data.csv src/create_processed_data.R
	mkdir -p ./tmp
	Rscript src/create_processed_data.R
	date > $@