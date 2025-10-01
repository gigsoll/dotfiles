import QtQuick
import QtQuick.Controls
import Quickshell
import Quickshell.Services.SystemTray
import Quickshell.Widgets

Repeater {
    model: SystemTray.items
    IconImage {
        required property SystemTrayItem modelData
        source: modelData.icon
    }
}
