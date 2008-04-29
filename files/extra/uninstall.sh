#!/bin/sh
PATH=/bin:/sbin:/usr/bin:/usr/sbin; export PATH

# ----------------------------------------
# unload
for f in /Library/LaunchDaemons/org.pqrs.PCKeyboardHack.* /Library/LaunchAgents/org.pqrs.PCKeyboardHack.*; do
    [ -f $f ] && launchctl unload $f 2> /dev/null
done

startup="/Applications/PCKeyboardHack/scripts/startup.sh"
[ -f "$startup" ] && "$startup" stop

startup="/Library/org.pqrs/PCKeyboardHack/scripts/startup.sh"
[ -f "$startup" ] && "$startup" stop

# ----------------------------------------
# uninstall
rm -rf /Applications/PCKeyboardHack
rm -rf /Library/org.pqrs/PCKeyboardHack

rm -rf /Library/PreferencePanes/PCKeyboardHack.prefPane

rm -f /Library/LaunchDaemons/org.pqrs.PCKeyboardHack.*
rm -f /Library/LaunchAgents/org.pqrs.PCKeyboardHack.*

exit 0
