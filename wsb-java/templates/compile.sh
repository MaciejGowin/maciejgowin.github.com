#!/bin/bash

PROXY=""
DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

for FILE in "$DIR"/zjazd-*.md; do
    FILENAME=$(echo $FILE | xargs basename | sed 's/.md//')

    cp "$DIR/$FILENAME.md" "$DIR/../wroclaw/$FILENAME.md"
    cp "$DIR/$FILENAME.md" "$DIR/../warszawa/$FILENAME.md"

    sed -i '' 's/LOGO/https:\/\/maciejgowin.github.io\/assets\/img\/wsb-merito-wroclaw-logo.png/g' "$DIR/../wroclaw/$FILENAME.md"
    sed -i '' 's/LOGO/https:\/\/maciejgowin.github.io\/assets\/img\/wsb-merito-warsaw-logo.png/g' "$DIR/../warszawa/$FILENAME.md"

    echo "Generating HTML for: $FILENAME"
    cd "$DIR/../wroclaw" || exit
    docker run --rm --init -v $PWD:/home/marp/app/ --env HTTP_PROXY="$PROXY" --env HTTPS_PROXY="$PROXY" -e LANG=$LANG marpteam/marp-cli "$FILENAME.md" -o "$FILENAME.html"
    cd "$DIR/../warszawa" || exit
    docker run --rm --init -v $PWD:/home/marp/app/ --env HTTP_PROXY="$PROXY" --env HTTPS_PROXY="$PROXY" -e LANG=$LANG marpteam/marp-cli "$FILENAME.md" -o "$FILENAME.html"

    echo "Generating PDF for: $FILENAME"
    cd "$DIR/../wroclaw" || exit
    docker run --rm --init -v $PWD:/home/marp/app/ --env HTTP_PROXY="$PROXY" --env HTTPS_PROXY="$PROXY" -e LANG=$LANG marpteam/marp-cli --pdf "$FILENAME.md" -o "$FILENAME.pdf"
    cd "$DIR/../warszawa" || exit
    docker run --rm --init -v $PWD:/home/marp/app/ --env HTTP_PROXY="$PROXY" --env HTTPS_PROXY="$PROXY" -e LANG=$LANG marpteam/marp-cli --pdf "$FILENAME.md" -o "$FILENAME.pdf"
done

cd "$DIR" || exit
