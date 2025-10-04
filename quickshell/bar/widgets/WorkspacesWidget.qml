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
            readonly property int workspaceID: modelData.id
            readonly property string workspaceName: modelData.name
            text: workspaceName
            color: isActive ? Config.accent : Config.buttonColor
            handleLeftClick: () => {
                Hyprland.dispatch(`workspace ${workspaceID}`)
            }
            handleRightClick: () => {
                Hyprland.dispatch(`movetoworkspacesilent ${workspaceID}`)
            }
            handleScroll: (wheel) => {
                let isScrollUp = wheel.angleDelta.y > 0
                if (isScrollUp) {
                    Hyprland.dispatch(`workspace +1`)
                } else {
                    Hyprland.dispatch(`workspace -1`)
                }
            }
        }
    }
}
