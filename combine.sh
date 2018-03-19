#!/bin/bash

source beasts

TARGET="$APP_COMBINED_MULTI"

while [ $# -gt 0 ]
do
  case "$1" in
    -a|--app)
      TARGET="$2"
      if [ "$TARGET" == "" ]
      then
        echo "ERROR: $1 requires an application name."
        echo "(Try \"$0 -h\" for help.)"
        exit 1
      fi
      shift
    ;;
    -h|--help)
      echo -e "Usage:\n\n$0 [OPTIONS]\n"
      echo "Option      Long Option     Meaning"
      echo "-a <app>    --app <app>     Put all devices inside of the application named <app>"
      echo "-h          --help          Show this help"
      exit 0
    ;;
    *)
      echo "ERROR: Unknown argument \"$1\"."
      echo "(Try \"$0 -h\" for help.)"
      exit 1
    ;;
  esac
  shift
done

echo Moving all devices into "$TARGET"...

for i in ${DEVICES_LONDON[@]} ${DEVICES_SEATTLE[@]}
do
  resin device move $i --application "$TARGET"
done
