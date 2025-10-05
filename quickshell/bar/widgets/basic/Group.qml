import QtQuick.Layouts
import Quickshell
import QtQuick
import QtQuick.Layouts
import qs.datasources

Rectangle {
    id: root
    implicitWidth: layout.implicitWidth
    implicitHeight: parent.height
    default property alias content: layout.children
    color: Config.sectionColor
    RowLayout {
        id: layout
        implicitHeight: parent.height
        anchors.verticalCenter: parent.verticalCenter
    }
}
