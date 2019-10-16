#!/bin/bash

cmakeImpl() {
	if [ -f "copy3rdlib.sh" ] ; then
		sh ./copy3rdlib.sh
	fi
	cmake -E make_directory "Solution/macOS" && cmake -E chdir "Solution/macOS" cmake -G "Xcode" ../../
}

cmakeImpl

if [ "$?" == 0 ] ; then
	open ./Solution/macOS/*.xcodeproj 2>/dev/null
fi
