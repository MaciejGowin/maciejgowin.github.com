#!/bin/bash

PROXY=""
DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

for FILE in "$DIR"/zjazd-10-*.md; do
    FILENAME=$(echo $FILE | xargs basename | sed 's/.md//')

    cp "$DIR/$FILENAME.md" "$DIR/../files/$FILENAME.md"

    echo "Generating HTML for: $FILENAME"
    cd "$DIR/../files" || exit
    docker run --rm --init -v $PWD:/home/marp/app/ --env HTTP_PROXY="$PROXY" --env HTTPS_PROXY="$PROXY" -e LANG=$LANG marpteam/marp-cli "$FILENAME.md" -o "$FILENAME.html"

    echo "Generating PDF for: $FILENAME"
    cd "$DIR/../files" || exit
    docker run --rm --init -v $PWD:/home/marp/app/ --env HTTP_PROXY="$PROXY" --env HTTPS_PROXY="$PROXY" -e LANG=$LANG marpteam/marp-cli --pdf "$FILENAME.md" -o "$FILENAME.pdf"
done

cd "$DIR" || exit
