#!/bin/bash
#
FILE=$(dirname $0)/nerd_font_links.txt
OUTPUT=$HOME/Downloads/nerdfontzips


if ! command -v axel &> /dev/null
then
    echo "axel could not be found"
    exit
fi
if [[ ! -f "$FILE" ]]; then
    echo "$FILE not exists."
fi

mkdir -p $OUTPUT

link=$(cat $FILE)

for i in $link
do
	axel $i
	#echo $i
done
