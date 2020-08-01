#!/bin/bash

hub checkout master
VERSION_NAME=`grep -oP 'version "\K(.*?)(?=")' ./${WIDGET_FOLDER}/package.json`
hub release create -a ./${WIDGET_FOLDER}/dist/*.mpl -m "${RELEASE_TITLE} - v${VERSION_NAME}" $(date +%Y%m%d%H%M%S) 