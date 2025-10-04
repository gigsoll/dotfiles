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
        IconImage {
            required property var modelData
            source: modelData.icon
            implicitSize: Config.fontSize + 8
        }
    }
}
