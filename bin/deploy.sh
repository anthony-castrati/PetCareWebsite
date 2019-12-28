#!/bin/bash

PROJECT_DIR="$( cd "$( dirname "$0" )/.." && pwd )"

# Build the webpage
cd $PROJECT_DIR
echo "Building project directory $PROJECT_DIR"
ng build --prod="true"

echo "Zipping application"
zip -r $PROJECT_DIR/dist/ccpc.zip $PROJECT_DIR/dist
