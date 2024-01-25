# Required two arguments: Input Folder and Output Folder
# do not put a forward slash (/) at the end of the input folder
input_folder=$1
output_folder=$2
if [ ! -d $output_folder ];then
	mkdir $output_folder
fi
python3 tokenizer_for_all_indian_languages_in_SSF_format.py --input $input_folder --output $input_folder"-Tokenized" --lang or
python3 split_sentences_into_files.py --input $input_folder"-Tokenized" --output $output_folder --split 50
rm -rf $input_folder"-Tokenized"
