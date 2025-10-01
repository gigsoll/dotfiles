import QtQuick
import Quickshell.Hyprland
import Quickshell.Widgets
import QtQuick.Controls
import QtQuick.Layouts
import qs.datasources
import qs.widgets

RowLayout {
    height: parent.height
    Repeater {
        model: Hyprland.workspaces
        Rectangle {
            required property var modelData
            property bool isActive: modelData.active
            width: 40
            implicitHeight: parent.height
            color: isActive ? Config.accent:Config.inactive
            anchors {
                leftMargin: 5
                rightMargin: 5
            }

            Label {
                text: modelData.id
                anchors.centerIn: parent
            }
            MouseArea {
                anchors. fill: parent
                onClicked: Hyprland.dispatch(`workspace ${modelData.id}`)
            }
        }
    }
}

