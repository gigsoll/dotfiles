import QtQuick.Layouts
import Quickshell
import QtQuick
import QtQuick.Layouts
import qs.datasources

Rectangle {
    id: root
    width: childrenRect.width
    height: parent.height
    anchors.verticalCenter: parent.verticalCenter
    default property alias content: layout.children
    color: "red"
    RowLayout {
        id: layout
        implicitHeight: parent.height
        anchors.verticalCenter: parent.verticalCenter

    }
}
