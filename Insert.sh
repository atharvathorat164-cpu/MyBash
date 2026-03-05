#!/bin/bash
DB_NAME="$1.txt"
shift

for value in "$@"; do
    printf "%-20s" "$value" >> "$DB_NAME"
done
echo "" >> "$DB_NAME"
echo "Record inserted."
