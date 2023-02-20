#!/bin/bash
#
FILE=$(dirname $0)/nerd_font_links.txt
OUTPUT=$HOME/Downloads/nerdfontzips

## DOWNLOAD

# if ! command -v axel &> /dev/null
# then
#     echo "axel could not be found"
#     exit
# fi
# if [[ ! -f "$FILE" ]]; then
#     echo "$FILE not exists."
# fi
# 
# mkdir -p $OUTPUT
# 
# link=$(cat $FILE)
# 
# for i in $link
# do
# 	axel $i --output=$OUTPUT
# 	#echo $i
# done

## Unzip things
mkdir -p $HOME/.local/share/fonts
unzf (){
    [ -z "$1" ] && echo "no file to unzip :|" && exit 1
    name="${1%.*}"
    name=$(basename $name)
    echo "----------------------"
    echo "uncompress ----------- $1"
    echo "----------------------"
    unzip $1 -d $HOME/.local/share/fonts/$name
}

files=$(ls $OUTPUT/*.zip 2> /dev/null)

for f in $files ; do
    unzf $f
done
