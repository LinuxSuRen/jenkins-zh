#!/bin/sh
# change the markdown to hugo style

# convert the markdown image syntax to hugo shortcode
grep -e "\!\[" -l content/wechat/articles/*.md | xargs sed -i '' 's/\!\[.*\](\(.*\)\(\/images.*\))/{{< img "\2" >}}/g'