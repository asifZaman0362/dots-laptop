#!/bin/bash
find /usr/share/icons/Papirus -type l -path '*/places/*' \( -ilname '*-blue-*' -o -ilname '*-blue.*'\) ! -iname '*-blue-*' ! -iname '*-blue.*' -exec bash -c 'echo "icon: $0"; link="$(readlink "$0")";echo "link: $link"; newlink="${link/-blue/-orange}"; echo "newlink: $newlink"; sudo ln -sf "$newlink" "$0";echo' '{}' \;
