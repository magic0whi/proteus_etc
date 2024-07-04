#!/bin/sh
set -eufo pipefail
sed 's/^exec "\$@"$/exec \$SHELL -c "\$@;systemctl --user stop graphical-session.target;loginctl terminate-session self"/' <<< $(cat)
