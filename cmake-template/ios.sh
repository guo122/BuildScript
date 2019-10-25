#!/bin/bash

cd "$(dirname "$0")"

cmakeImpl() {
    cmake -E make_directory "Solution/iOS" && cmake -E chdir "Solution/iOS" cmake -G "Xcode" ../../ -DCMAKE_TOOLCHAIN_FILE=./BuildScript/cmake/ios-cmake/ios.toolchain.cmake -DPLATFORM=OS64COMBINED
	cmake_ret="$?"
}

cmakeImpl

if [ "$cmake_ret" == 0 ] ; then
    open ./Solution/iOS/*.xcodeproj 2>/dev/null
fi

if [ "$1" == "a" -a -f "./script/open3rdSolution_ios.sh" ] ; then
    ./script/open3rdSolution_ios.sh
fi
