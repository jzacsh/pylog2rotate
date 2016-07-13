#!/usr/bin/env bash
set -euo pipefail

# DO NOT MERGE

listBackups() (
  printf '%s\n' \
    2016-{05-{01..31},06-{01..30},07-{01..08}}T{00..23}:05 |
  sort --reverse;
)
listBackups | python2 ./log2rotate.py --keep --format='%Y-%m-%dT%H:%M' --interval=hour
