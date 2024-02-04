#!/bin/bash

PROXY=""
DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
IN_DIR="$DIR"
OUT_DIR="$DIR/../files"

for FILE in "$IN_DIR"/*.md; do
    FILENAME=$(echo $FILE | xargs basename | sed 's/.md//')

    cp "$IN_DIR/$FILENAME.md" "$OUT_DIR/$FILENAME.md"

    echo "Generating HTML for: $FILENAME"
    cd "$OUT_DIR" || exit
    docker run --rm --init -v $PWD:/home/marp/app/ --env HTTP_PROXY="$PROXY" --env HTTPS_PROXY="$PROXY" -e LANG=$LANG marpteam/marp-cli "$FILENAME.md" -o "$FILENAME.html"

    #echo "Generating PDF for: $FILENAME"
    #cd "$OUT_DIR" || exit
    #docker run --rm --init -v $PWD:/home/marp/app/ --env HTTP_PROXY="$PROXY" --env HTTPS_PROXY="$PROXY" -e LANG=$LANG marpteam/marp-cli --pdf "$FILENAME.md" -o "$FILENAME.pdf"
done

cd "$DIR" || exit
