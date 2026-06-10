#!/usr/bin/env bash
# Regenerate images.json — run this after adding/removing pictures.
# Hero image (IMG_1612.JPG) is excluded automatically.

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PICTURES_DIR="$SCRIPT_DIR/Pictures"
OUTPUT="$SCRIPT_DIR/images.json"

cd "$PICTURES_DIR" || exit 1

echo '[' > "$OUTPUT"
files=()
for f in $(ls -1 | grep -iv 'IMG_1612.JPG' | grep -iE '\.(jpg|jpeg)$' | sort); do
  files+=("$f")
done

for i in "${!files[@]}"; do
  if [ $i -lt $((${#files[@]} - 1)) ]; then
    echo "  \"${files[$i]}\"," >> "$OUTPUT"
  else
    echo "  \"${files[$i]}\"" >> "$OUTPUT"
  fi
done

echo ']' >> "$OUTPUT"
echo "Generated $OUTPUT with ${#files[@]} images."
