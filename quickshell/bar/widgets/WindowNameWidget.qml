import QtQuick
import Quickshell
import qs.datasources
import qs.widgets.basic


StyledButton {
    id: root
    text: setName()

    function setName() {
        const windowName = HyprlandIPC.windowName
        const maxLetterCount = 30
        if (windowName == "")   return "Стільниця"
        if (root.isHovered || windowName.length <= maxLetterCount)  return windowName
        return windowName.slice(0, maxLetterCount - 3).replace(/\s+$/, '') + "..."
    }
}

