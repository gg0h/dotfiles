function mkcd() { mkdir "$1" && cd "$1"; }
function rs() { mkdir -p scans && rustscan -a "$1" --ulimit 5000 -b 400 -t 7500  -- -sC -sV -oN "./scans/$1"; }
function config { /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@; }
function j { john $1 --wordlist=/usr/share/wordlists/rockyou.txt; }
function h { hashcat $1 /usr/share/wordlists/rockyou.txt -O; }
