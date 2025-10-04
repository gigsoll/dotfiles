import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import Quickshell
import Quickshell.Widgets
import qs.datasources

Rectangle {
    id: styledButton 
    implicitHeight: parent.height
    implicitWidth: childrenRect.width
    color: Config.buttonColor

    property string text
    property var handleLeftClick: () => {}
    property var handleRightClick: () => {}
    property var handleScroll: (wheel) => {}

    property bool disableText: false
    property bool disableImage: true

    RowLayout {
        implicitHeight: parent.height
        anchors.verticalCenter: parent.verticalCenter
        IconImage {
            visible: !disableImage
            source: "file:///home/tolik/Завантажене/teto.png"
            implicitSize: Config.fontSize + 8
        }
        StyledText {
            visible: !disableText
            text: styledButton.text
        }
    }

    MouseArea {
        anchors.fill: parent
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        onClicked: (mouse) => {
            if (mouse.button == Qt.RightButton) {
                handleRightClick()
            } else {
                handleLeftClick()
            }
        }
        onWheel: {
            handleScroll(wheel)
        }
    }
}
