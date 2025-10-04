import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import Quickshell
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

    StyledText {
        text: styledButton.text
    }

    Component.onCompleted: {
        console.log(text, childrenRect.height)
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
