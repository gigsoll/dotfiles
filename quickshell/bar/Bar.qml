import Quickshell
import Quickshell.Io
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

import qs.widgets


Scope {
    id: root
    property string time
    Variants {
        model: Quickshell.screens;
        PanelWindow {
            required property var modelData
            screen: modelData
            anchors {
                top: true
                left: true
                right: true
            }
            implicitHeight: 30
            
            RowLayout {
                id: left
                anchors{
                    left: parent.left
                    verticalCenter: parent.verticalCenter
                }
                implicitHeight: parent.height
                WorkspacesWidget {}
            }
            RowLayout {
                id: center
                anchors.centerIn: parent
                ClockWidget {}
            }
            RowLayout {
                id: right
                anchors{
                    right: parent.right
                    verticalCenter: parent.verticalCenter
                }
                    KeyboardWidget {}
            }
        }
    }
}
