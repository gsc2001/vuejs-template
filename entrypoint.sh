#!/bin/sh
# determine prod or dev stage

if [ "$DEBUG" = 1 ]; then
    npm run dev
else
    npm run build
    npm run serve
fi
