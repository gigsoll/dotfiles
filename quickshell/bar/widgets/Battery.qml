import QtQuick
import Quickshell
import Quickshell.Services.UPower

import qs.widgets.basic

Group {
    Repeater {
        model: UPower.devices

        StyledButton {
            visible: false
            required property var modelData
            property string deviceType: UPowerDeviceType.toString(modelData.type)
            property real percentage: modelData.percentage
            imageSource: `image://icon/${modelData.iconName}`

            text: percentage * 100 + "%"
            Component.onCompleted: {
                if (deviceType === "Battery") {
                    visible = true
                    console.log(`Icon source from component: ${icon.source}`)
                }
            }

        }
    }
}
