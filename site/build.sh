#!/bin/bash
table=$(cat "files/blacklist.csv" | sed -e '/^#/d' | while read string; do echo "<tr><td>$(echo "$string" | cut -d, -f1)</td><td>$(echo "$string" | cut -d, -f2)</td><td>$(echo "$string" | cut -d, -f3)</td><td>$(echo "$string" | cut -d, -f4)</td><td>$(echo "$string" | cut -d, -f5)</td><td>$(echo "$string" | cut -d, -f6)</td><td>$(echo "$string" | cut -d, -f7)</td></tr>"; done)
echo "$table"
cat "blacklist/template.html" | replace 'blacktable' "$table" > "blacklist/index.html"
