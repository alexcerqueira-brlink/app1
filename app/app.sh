#!/bin/bash
mv /usr/share/nginx/html/app.tpl /usr/share/nginx/html/${APPNAME}.html
sed -i 's/HOSTNAME/${HOSTNAME}/g' /usr/share/nginx/html/${APPNAME}.html
