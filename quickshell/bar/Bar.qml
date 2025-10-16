import Quickshell
import Quickshell.Io
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

import qs.widgets
import qs.widgets.basic
import qs.datasources


Scope {
    id: root
    property string time
    Variants {
        model: Quickshell.screens;
        PanelWindow {
            id: barRoot
            required property var modelData
            screen: modelData
            anchors {
                top: true
                left: true
                right: true
            }
            implicitHeight: 30

            Rectangle {
                anchors.fill: parent
                color: Config.background
            }

            Group {
                id: leftGroup
                WorkspacesWidget {}
                WindowNameWidget {}
            }

            Group {
                id: centerGroup 
                anchors.centerIn: parent
                ClockWidget {}
            }

            Group {
                 id: rightGroup
                 anchors.right: parent.right
                 Battery {}
                 KeyboardWidget {}
                 Systray {}
            }
        }
    }
}
