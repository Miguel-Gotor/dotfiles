#!/bin/sh
# dmenu-search.sh
# Browse the internet using dmenu
pgrep -x dmenu  && exit

choice=$(echo "DDG\nGoogle\nWikipedia\nRAE" | dmenu -i -p "Search with:" -i -b -fn 'Dejavu Sans Book:size=11' -nb '#000000' -nf '#FFFFFF' -sb '#FFFFFF' -sf '#000000') || exit 1
# TODO: fix google error: "grep: warning: stray \ before /"
if [ "$choice" = "DDG" ]; then
    search_engine="https://duckduckgo.com/?q="
elif [ "$choice" = "Google" ]; then
    search_engine="-private https://www.google.com/search?q="
elif [ "$choice" = "Wikipedia" ]; then
    search_engine="https://en.wikipedia.org/wiki/"
elif [ "$choice" = "RAE" ]; then
    search_engine="https://dle.rae.es/"
else
    exit 1
fi

search_term=$(echo "" | dmenu -p "Enter search term:" -i -b -fn 'Dejavu Sans Book:size=11' -nb '#000000' -nf '#FFFFFF' -sb '#FFFFFF' -sf '#000000') || exit 1
search_term=$(echo "$search_term" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')

if [ -z "$search_term" ]; then
    $BROWSER $search_engine
else
    # Detect url
    if echo "$search_term" | grep -E -q '^(http:\/\/|https:\/\/)?[a-zA-Z0-9]+\.[a-zA-Z]+(/)?.*$'; then
        $BROWSER "$search_term"
    else
        $BROWSER "$search_engine$search_term"
    fi
fi