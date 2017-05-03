#!/bin/bash

cd "`dirname \"$0\"`"
cd ..

#
# All lines in the exlude variable are ignored during spell check.
#
exclude="# fail
schulcloud-
.git/
# ;)"

if grep -riE 'schul(([^0-9a-zA-Z-])+|([[^:space:-]])*|[[:space:]]+-[[:space:]]*|[[:space:]]*-[[:space:]]+)cloud|shcul' | grep -vF "$exclude" # fail
then
  1>&2 echo -e "\e[1;31mMisspelling detected!\e[0m"
  exit 1
fi

1>&2 echo -e "\e[1;32mSchul-Cloud is spelled correctly all through the website.\e[0m"
exit 0
