import QtQuick
import QtQuick.Controls
import Quickshell
import Quickshell.Services.SystemTray
import Quickshell.Widgets
import qs.datasources
import qs.widgets.basic

Group {
    id: systray
    Repeater {
        model: SystemTray.items
        StyledButton {
            id: trayIcon
            required property var modelData
            imageSource: modelData.icon

            handleLeftClick: () => {
                modelData.activate()
            }

            handleRightClick: () => {
                modelData.display(
                    barRoot,
                    rightGroup.x + systray.x + trayIcon.x + trayIcon.width, 
                    barRoot.height)
            }
        }
    }
}
