#!/bin/bash
for ext_dir in /Users/*/.vscode/extensions; do
    [ -d "$ext_dir" ] || continue
    find "$ext_dir" -type d -iname "*git*" -o -iname "*grrrck*" -o -iname "*cline-ai*" -o -iname "*TretinV3*" -o -iname "*sissel*" -o -iname "*srcery-colors*" -o -iname "*jeronimoekerdt*" -o -iname "*codejoy*" -o -iname "*kleinesfilmroellchen*" -o -iname "*l-igh-t*" -o -iname "*jscearcy*" -o -iname "*sirilmp*" -o -iname "*codeinklingon*" -o -iname "*ginfuru*" -o -iname "*ellacrity*" | while read line; do
        echo "Processing '$line'"
    done
done