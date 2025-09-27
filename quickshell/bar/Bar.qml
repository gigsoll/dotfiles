import Quickshell
import Quickshell.Io
import Quickshell.Hyprland
import QtQuick


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

            ClockWidget {
                anchors.centerIn: parent
            }

            WorkspacesWidget {}
        }
    }

}
