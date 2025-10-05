import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import Quickshell
import Quickshell.Widgets
import qs.datasources

Rectangle {
    id: styledButton 
    height: parent ? parent.height : implicitHeight
    implicitWidth: elements.width
    width: implicitWidth
    color: Config.buttonColor

    property string text
    property string imageSource

    property var handleLeftClick: () => {}
    property var handleRightClick: () => {}
    property var handleScroll: (wheel) => {}

    property bool enableText: Boolean(text)
    property bool enableImage: Boolean(imageSource)

    RowLayout {
        id: elements
        anchors.verticalCenter: parent.verticalCenter
        spacing: 1
        IconImage {
            visible: enableImage
            source: imageSource
            implicitSize: Config.fontSize + 8
        }
        StyledText {
            visible: enableText
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

    Behavior on width {
        NumberAnimation {
            duration: 300
        }
    }
}
