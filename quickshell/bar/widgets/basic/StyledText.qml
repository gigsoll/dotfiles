import Quickshell
import Quickshell.Widgets
import QtQuick
import qs.datasources
import QtQuick.Layouts


Text {
    id: root
    text: ""
    height: implicitHeight
    color: Config.fontColor
    Layout.alignment: Qt.AlignVCenter
    font {
        pointSize: Config.fontSize
        family: Config.fontName
    }

    padding: 10

}

