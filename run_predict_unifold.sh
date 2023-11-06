fasta_path=$1
output_dir_base=$2
database_dir=$3
max_template_date=$4
model_name=$5
param_path=$6

echo "Starting prediction..."
fasta_file=$(basename $fasta_path)
target_name=${fasta_file%.fa*}
python unifold/inference.py \
        --max_recycling_iters=10 \
	--model_name=$model_name \
	--param_path=$param_path \
	--data_dir=$output_dir_base \
	--target_name=$target_name \
	--output_dir=$output_dir_base
