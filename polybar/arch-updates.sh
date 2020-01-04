#!/bin/sh

updates_arch=$(checkupdates 2> /dev/null | wc -l )
updates_aur=$(yay -Qum 2> /dev/null | wc -l)
updates=$(( $updates_arch + $updates_aur ))
[ $updates -gt 0 ] && echo $updates || echo ""
