#!/bin/bash

PROJECT_DIR="$( cd "$( dirname "$0" )/.." && pwd )"

# Build the webpage
cd $PROJECT_DIR
echo "Building project directory $PROJECT_DIR"
ng build --prod="true"

echo "Zipping application"
cd $PROJECT_DIR/dist
zip -r ccpc.zip .
