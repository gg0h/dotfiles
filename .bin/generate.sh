#! /bin/bash

if (( $# != 1)); then
	>&2 echo "usage ./generate.sh <dir_name>"
	exit 1
fi

mkdir -p  $1 && cd $1 && mkdir -p loot scans foothold privesc 

__template="
# $1

## Credentials

| user | password | service | notes |
| --- | --- | --- | --- |
| | | | |
| | | | |

## Service Enumeration

### nmap

quick
\`\`\`
\`\`\`

full
\`\`\`
\`\`\`

## foothold

## privesc

## post
"

echo "$__template" > README.md
