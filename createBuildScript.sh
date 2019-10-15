#!/bin/bash

cd "$(dirname "$0")"/..

PROJECT_PATH=`pwd`

rm -rf "$PROJECT_PATH/ios.sh"
rm -rf "$PROJECT_PATH/macos.sh"
rm -rf "$PROJECT_PATH/windows.bat"

ln -s "$PROJECT_PATH/BuildScript/cmake-template/ios.sh" "$PROJECT_PATH/ios.sh"
ln -s "$PROJECT_PATH/BuildScript/cmake-template/macos.sh" "$PROJECT_PATH/macos.sh"
ln -s "$PROJECT_PATH/BuildScript/cmake-template/windows.bat" "$PROJECT_PATH/windows.bat"
