#!/bin/sh

# Usage: ./update.sh ShadowVim.app 0.2.0

# https://sparkle-project.org/documentation/publishing/#publishing-an-update
ditto -c -k --sequesterRsrc --keepParent $1 `basename $1 .app`-$2.zip
rm -rf $1
generate_appcast --link https://github.com/mickael-menu/ShadowVim --full-release-notes-url https://github.com/mickael-menu/ShadowVim/releases .
