#!/bin/bash

# Update .po files
find locale -name "*.po" -execdir xgettext -L Python -j -o freepto-passwords-changer.po --package-name freepto-passwords-changer --package-version 1.1 --msgid-bugs-address paskao@hacari.org `pwd`/freepto-passwords-changer \;
find locale -name "*.po" -execdir msgfmt freepto-passwords-changer.po -o freepto-passwords-changer.mo \;
