import QtQuick
import Quickshell.Hyprland
import qs.datasources
import qs.widgets.basic

Group {
    Repeater {
        model: Hyprland.workspaces
        StyledButton {
            required property var modelData
            property bool isActive: modelData.active
            text: modelData.name
            color: isActive ? Config.accent : Config.buttonColor
        }
    }
}
