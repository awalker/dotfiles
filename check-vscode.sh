#!/usr/bin/env bash

# Actually, this can fail if vs code is installed but the cli tool is not
CODE=$(which code)
echo $CODE

if [[ $CODE != "/usr/local/bin/code" ]]; then
    echo "Install VSCode"
else
    echo "VSCode availible"
    EXTS=$(code --list-extensions)
    echo $EXTS
    echo ------------------
    FILE_EXTS=$(cat vscodefile)
    echo $FILE_EXTS
    echo ------------------

    for i in $FILE_EXTS; do
        skip=
        for j in $EXTS; do
            [[ $i == $j ]] && {
                skip=1
                break
            }
        done
        [[ -n $skip ]] || echo $i
    done
fi
