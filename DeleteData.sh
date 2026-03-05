#!/bin/bash
# Usage: ./delete_data.sh [db_name] [search_term]
DB_NAME="$1.txt"
TERM="$2"

HEADER=$(head -n 1 "$DB_NAME")
(echo "$HEADER"; tail -n +2 "$DB_NAME" | grep -v "$TERM") > temp_db.txt
mv temp_db.txt "$DB_NAME"

echo "Deleted rows containing '$TERM'."
