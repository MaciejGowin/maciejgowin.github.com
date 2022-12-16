#!/bin/bash

DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

for FILE in "$DIR"/zjazd-04-*.md; do
    FILENAME=$(echo $FILE | xargs basename | sed 's/.md//')

    cp "$DIR/$FILENAME.md" "$DIR/../wroclaw/$FILENAME.md"
    cp "$DIR/$FILENAME.md" "$DIR/../warszawa/$FILENAME.md"

    sed -i '' 's/LOGO/https:\/\/maciejgowin.github.io\/assets\/img\/wsb-logo-wroclaw.png/g' "$DIR/../wroclaw/$FILENAME.md"
    sed -i '' 's/LOGO/https:\/\/maciejgowin.github.io\/assets\/img\/wsb-logo-warszawa.png/g' "$DIR/../warszawa/$FILENAME.md"

    echo "Generating HTML for: $FILENAME"
    marp "$DIR/../wroclaw/$FILENAME.md" -o "$DIR/../wroclaw/$FILENAME.html"
    marp "$DIR/../warszawa/$FILENAME.md" -o "$DIR/../warszawa/$FILENAME.html"

    echo "Generating PDF for: $FILENAME"
    marp --pdf "$DIR/../wroclaw/$FILENAME.md" -o "$DIR/../wroclaw/$FILENAME.pdf"
    marp --pdf "$DIR/../warszawa/$FILENAME.md" -o "$DIR/../warszawa/$FILENAME.pdf"
done
