#!/bin/sh
# determine prod or dev stage

if [ -z "$DEBUG" ]; then
    echo "Need to set \$DEBUG"
    exit 1
fi

if [ "$DEBUG" = 1 ]; then
    npm run-script serve
else
    export NODE_ENV=development
    npm install --save-dev
    npm run-script build
    export NODE_ENV=production
    npx serve -d dist -l 8080
fi
