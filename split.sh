#!/bin/bash

source beasts

for i in ${DEVICES_LONDON[@]}
do
  resin device move $i --application "$APP_LONDON"
done

for i in ${DEVICES_SEATTLE[@]}
do
  resin device move $i --application "$APP_SEATTLE"
done
