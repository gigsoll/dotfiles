import QtQuick
import Quickshell
import qs.datasources
import qs.widgets.basic


StyledButton {
    text: setName()
    property bool isHovered: false

    function setName() {
        const windowName = HyprlandIPC.windowName
        const maxLetterCount = 30
        if (windowName == "")   return "Стільниця"
        if (root.isHovered)     return windowName
        return windowName.slice(0, maxLetterCount)
    }
}

