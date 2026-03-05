#!/bin/bash
DB_NAME="$1.txt"
shift # Removes the database name so only fields remain in $@

for field in "$@"; do
    printf "%-20s" "$field" >> "$DB_NAME"
done
echo "" >> "$DB_NAME"
echo "Table headers added to $DB_NAME."
