#!/bin/bash

source beasts

for i in ${DEVICES_LONDON[@]} ${DEVICES_SEATTLE[@]}
do
  resin device move $i --application "$APP_COMBINED"
done
