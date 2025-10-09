import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import Quickshell
import Quickshell.Widgets
import qs.datasources

Button {
    id: styledButton
    height: parent ? parent.height : implicitHeight
    width: implicitWidth
    flat: true

    font {
        family: Config.fontName
        pointSize: Config.fontSize
    }
    palette.buttonText: Config.fontColor

    leftPadding: 10
    rightPadding: 10


    property string imageSource: ""
    property string iconName: ""
    property color customColor: Config.buttonColor

    property var handleLeftClick: () => {}
    property var handleRightClick: () => {}
    property var handleScroll: (wheel) => {}

    property bool isHovered: false

    icon.source: imageSource

    background: Rectangle {
        color: customColor
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
        HoverHandler {
            id: mouse
            acceptedDevices: PointerDevice.Mouse | PointerDevice.TouchPad
            onHoveredChanged: {
                styledButton.isHovered = mouse.hovered
            }
        }
    }

    Behavior on width {
        NumberAnimation {
            duration: 300
        }
    }
}
