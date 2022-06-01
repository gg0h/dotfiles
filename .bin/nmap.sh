#!/bin/bash
mkdir -p ./scans
nmap -T4 -sS -p- $1 -Pn -oN ./scans/$1-full 
nmap --top-ports 100 -sUV $1 -oN ./scans/$1-UDP100
