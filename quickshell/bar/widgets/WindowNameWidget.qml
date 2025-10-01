import QtQuick
import Quickshell
import qs.datasources


Label {
    id: root
    text: setName()
    width: implicitWidth
    property bool isHovered: false
    clip: true

    function setName() {
        const windowName = HyprlandIPC.windowName
        const maxLetterCount = 30
        if (windowName == "")   return "Стільниця"
        if (root.isHovered)     return windowName
        return windowName.slice(0, maxLetterCount)
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        onEntered: { root.isHovered = true}
        onExited: {root.isHovered = false}
    }
}
