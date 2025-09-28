pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Io

Singleton {
    id: root
    property string time: Qt.formatDateTime(clock.date, "hh:mm:ss")

    SystemClock {
        id: clock
        precision: SystemClock.Seconds
    }


}
