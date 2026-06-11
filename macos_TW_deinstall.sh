#!/bin/bash
# Force uninstall using the built-in uninstaller
if [ -f "/Library/Application Support/TeamViewer/TeamViewerUninstaller.app/Contents/Helpers/UninstallTeamViewer" ]; then
    "/Library/Application Support/TeamViewer/TeamViewerUninstaller.app/Contents/Helpers/UninstallTeamViewer" --force
fi