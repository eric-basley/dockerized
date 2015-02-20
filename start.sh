#!/bin/bash

APP="/app"

cd "$COCKPIT"

echo "Running App version $APP_VERSION ..."
DEBUG=main* node main
