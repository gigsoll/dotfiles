import QtQuick
import Quickshell
import qs.datasources
import qs.widgets.basic

StyledButton {
    text: HyprlandIPC.layoutText
    id: kbl

    handleLeftClick: () => {
        batteryPopUp.visible = !batteryPopUp.visible
    }
}
