#!/bin/bash

# 1. Quit AnyDesk to ensure files aren't in use
echo "Closing AnyDesk..."
osascript -e 'quit app "AnyDesk"'
# Alternatively, force kill
killall AnyDesk >/dev/null 2>&1

# 2. Remove the Application from Applications Folder
echo "Removing AnyDesk.app..."
rm -rf /Applications/AnyDesk.app

# 3. Remove Configuration Files and Folders
echo "Removing user configuration files..."
rm -rf ~/.anydesk/
rm -rf ~/.anydesk-ad_*/ # Remove custom client configs if present

# 4. Remove System-wide Configuration (requires sudo)
echo "Removing system-wide configuration..."
sudo rm -rf /etc/anydesk/
sudo rm -rf /etc/anydesk-ad_*/

# 5. Remove Launch Agents/Daemons (if installed)
echo "Removing startup items..."
sudo rm -rf /Library/LaunchAgents/com.anydesk.anydesk.plist
sudo rm -rf /Library/LaunchDaemons/com.anydesk.anydesk.plist

# 6. Remove preferences
rm -f ~/Library/Preferences/com.philandro.anydesk.plist
sudo rm -f /Library/Preferences/com.philandro.anydesk.plist

echo "AnyDesk has been completely uninstalled."