import QtQuick
import Quickshell.Hyprland
import Quickshell.Widgets
import QtQuick.Controls
import QtQuick.Layouts
import qs.datasources

RowLayout {
    height: parent.height
    Repeater {
        model: Hyprland.workspaces
        Rectangle {
            required property var modelData
            property bool isActive: modelData.active
            width: 40
            height: parent.height
            color: isActive ? "pink":"lightgray"
            anchors {
                leftMargin: 5
                rightMargin: 5
            }

            Text {
                text: modelData.id
                anchors.centerIn: parent
                font {
                    pointSize: Config.fontSize
                    family: Config.fontName
                }
            }
            MouseArea {
                anchors. fill: parent
                onClicked: Hyprland.dispatch(`workspace ${modelData.id}`)
            }
        }
    }
}

