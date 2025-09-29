import Quickshell
import Quickshell.Io
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

import qs.widgets
import qs.datasources


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
            
            Grouping {
                anchors.left: parent.left
                WorkspacesWidget{}
                WindowNameWidget {}
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
