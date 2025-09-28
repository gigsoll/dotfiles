pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Io
import Quickshell.Hyprland


Singleton {
    id: root

    FileView {
        id: jsonFile
        path: Qt.resolvedUrl("./flags.json")
        blockLoading: true
    }

    readonly property var nameFlagMapping: JSON.parse(jsonFile.text())
    property string layoutText: "Hello"

    Process {
        id: getLayout
        running: true
        command: ["hyprctl", "-j", "devices"]

        stdout: StdioCollector {
            onStreamFinished: {
                const devices = JSON.parse(this.text)
                let curLayoutName = devices["keyboards"].find(kb => kb.main === true)["active_keymap"]
                curLayoutName = nameFlagMapping[curLayoutName]
                root.layoutText = curLayoutName
            }
        }
    }

    Connections {
        target: Hyprland

        function onRawEvent(event) {
            if (event.name !== "activelayout") return
            getLayout.running = true
        }
    }
}
