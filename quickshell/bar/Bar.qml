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
                RowLayout {
                    implicitHeight: parent.height
                    WorkspacesWidget{}
                    WindowNameWidget {}
                }
            }

            
            Grouping {
                anchors.centerIn: parent
                RowLayout {
                    implicitHeight: parent.height
                    ClockWidget {}
                }
            }
        

             Grouping {
                 anchors.right: parent.right
                 RowLayout {
                    implicitHeight: parent.height
                    KeyboardWidget {}
                    Systray {}
                 }
            }
        }
    }
}
