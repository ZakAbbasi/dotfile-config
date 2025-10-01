pragma Singleton

import Quickshell
import Quickshell.Io
import Quickshell.Hyprland
import QtQuick

Singleton {
    id: hyprSpaces
    property var allWorkspaces: Array(9).fill(0).map((_, i) => i + 1)

}