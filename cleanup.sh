#!/bin/bash
#declare array variable fileTypes
declare -a fileTypes=("docx" "doc" "odt" "pdf" "jpg" "JPG" "png" "PNG" "html" "rtf" "txt" "jnlp" "pptx" "ppt" "xls" "xlsx" "ods" "csv")

#loop array to remove file from Downloads and tmp dir
for i in "${fileTypes[@]}"
do
	rm ~/Downloads/*."$i" 2> ~/.cleanup.err
	rm -Rf ~/tmp/*
done
echo "Clean up complete."
