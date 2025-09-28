import QtQuick
import qs.datasources

Text {
    text: Time.time
    font {
        pointSize: Config.fontSize
        family: Config.fontName
    }
}
