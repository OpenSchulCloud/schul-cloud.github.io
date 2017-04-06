#!/bin/bash

cd "`dirname \"$0\"`"
cd ..

wrong_spelling_command="grep -n -riE 'schul(([^0-9a-zA-Z-])+|([[^:space:-]])*|[[:space:]]+-[[:space:]]*|[[:space:]]*-[[:space:]]+)cloud|shcul' | grep -vF '# fail'"

if bash -c "$wrong_spelling_command"; then
  1>&2 echo -e "\e[1;31mMisspelling detected!\e[0m"
  exit 1
fi

1>&2 echo -e "\e[1;32mAll correct\e[0m"
exit 0
