#!/bin/bash

npx gulp icons iconfont && \
base64 --wrap=0 vaadin-icons.woff2 > vaadin-icons.base64;
echo "Copy vaadin-icons.base64 contents and paste to @font-face like this:";
echo "";
echo 'src: url("data:application/font-woff2;charset=utf-8;base64,'$(cat vaadin-icons.base64)'") format("woff2");';

