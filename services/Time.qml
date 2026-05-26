pragma Singleton

import Quickshell
import QtQuick

Singleton {
    id: root

    readonly property date datetime: clock.date

    SystemClock {
        id: clock
        precision: SystemClock.Minutes
    }
}
