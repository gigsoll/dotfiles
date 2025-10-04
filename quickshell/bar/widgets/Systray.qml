import QtQuick
import QtQuick.Controls
import Quickshell
import Quickshell.Services.SystemTray
import Quickshell.Widgets
import qs.datasources
import qs.widgets.basic

Group {
    Repeater {
        model: SystemTray.items
        StyledButton {
            required property var modelData
            imageSource: modelData.icon
        }
    }
}
