#!/bin/sh
# determine prod or dev stage

if [ -z "$DEBUG" ]; then
    echo "Need to set \$DEBUG"
    exit 1
fi

if [ "$DEBUG" = 1 ]; then
    npm run-script serve
else
    npm run-script build && npx serve -d dist
fi
