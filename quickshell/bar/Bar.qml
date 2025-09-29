import Quickshell
import Quickshell.Io
import Quickshell.Hyprland
import QtQuick

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
            
            Row {
                height: parent.height
                WorkspacesWidget {}
                ClockWidget {}
                KeyboardWidget {}
            }


        }
    }

}
