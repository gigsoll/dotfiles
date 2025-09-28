import QtQuick
import Quickshell.Hyprland
import qs.datasources

Row {
    Repeater {
        model: Hyprland.workspaces
        Component {
            id: group
            Rectangle {
                required property var modelData;
                property bool active: modelData.active
                
                id: rect
                height: 30
                width: 40
                color: active ? "pink":"lightgray"
                Text {
                    text: modelData.name
                    anchors.centerIn: rect
                    color: "black" 
                    font {
                        pointSize: Config.fontSize
                        family: Config.fontName
                    }
                }
            }
        }
    }
}

