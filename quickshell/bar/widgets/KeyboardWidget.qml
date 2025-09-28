import QtQuick
import qs.datasources

Text {
    text: Keyboard.layoutText
    font {
        pointSize: Config.fontSize
        family: Config.fontName
    }
}
