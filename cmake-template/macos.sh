#!/bin/bash

cd "$(dirname "$0")"

cmakeImpl() {
	cmake -E make_directory "Solution/macOS" && cmake -E chdir "Solution/macOS" cmake -G "Xcode" ../../
	cmake_ret="$?"
}

cmakeImpl

if [ "$cmake_ret" == 0 ] ; then
	open ./Solution/macOS/*.xcodeproj 2>/dev/null
fi

if [ "$1" == "a" -a -f "./script/open3rdSolution_macos.sh" ] ; then
	./script/open3rdSolution_macos.sh
fi
