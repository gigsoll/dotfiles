import QtQuick
import Quickshell.Hyprland

Row {
    Repeater {
        model: Hyprland.workspaces
        Component {
            id: group
            Rectangle {
                id: rect
                required property var modelData;
                property bool active: modelData.active
                height: 30
                width: 40
                color: active ? "pink":"lightgray"
                Text {
                    text: modelData.name
                    anchors.centerIn: rect
                    color: "black" 
                    font {
                        pointSize: 15
                    }
                }
            }
        }
    }
}

