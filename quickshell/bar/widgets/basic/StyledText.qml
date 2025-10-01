import Quickshell
import Quickshell.Widgets
import QtQuick
import qs.datasources
import QtQuick.Layouts


Text {
    id: root
    text: ""
    width: implicitWidth
    height: implicitHeight
    anchors.verticalCenter: parent.verticalCenter
    color: Config.fontColor
    Layout.alignment: Qt.AlignVCenter
    font {
        pointSize: Config.fontSize
        family: Config.fontName
    }

    padding: 10

    Behavior on width {
        NumberAnimation {
            duration:500
            easing.type: Easing.OutQuad
        }
    }
}

