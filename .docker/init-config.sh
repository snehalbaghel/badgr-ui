#!/bin/bash

if [ -z "$BADGR_UI_CONFIG_FILE" ]; then
    echo "Using environment.prod.ts.example, set BADGR_UI_CONFIG_FILE to set config json."
    if ! [ -f src/environments/environment.prod.ts ]; then
        cp src/environments/environment.prod.ts.example src/environments/environment.prod.ts
    fi
else
    echo "Using $BADGR_UI_CONFIG_FILE as config"
    cp $BADGR_UI_CONFIG_FILE src/environments/config.json
    cp .docker/environment.from.json.copy src/environments/environment.prod.ts
fi
