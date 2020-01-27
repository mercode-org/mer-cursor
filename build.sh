#!/bin/bash

set -exuo pipefail

cd src
for f in $(find -iname "*.svg"); do
  out=${f/".svg"/".png"}
  inkscape "$f" "--export-png=$out" --export-dpi=100
done

for f in $(find -iname "*.cursor"); do
  out=$(basename "$f")
  out=${out/".cursor"/""}
  out="$PWD/../theme/mer-cursor/cursors/$out"
  xcursorgen "$f" "$out"
done
