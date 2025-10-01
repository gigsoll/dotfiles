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

    StyledText {
        text: styledButton.text
    }

    Component.onCompleted: {
        console.log(childrenRect.height)
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            console.log(styledButton.text)
        }
    }
}
