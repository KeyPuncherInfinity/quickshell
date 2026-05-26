pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Services.UPower
import qs.assets

Singleton {
    id: root

    readonly property int batteryPercent: UPower.displayDevice.percentage * 100
    readonly property int batteryState: UPower.displayDevice.state 

    readonly property int fullBattery: 75
    readonly property int highBattery: 50
    readonly property int mediumBattery: 25

    function getBatteryIcon() {
        switch (batteryState) {
            case UPowerDeviceState.FullyCharged:
            return Icons.batteryPlus
            case UPowerDeviceState.Discharging:
            if (batteryPercent > fullBattery) {
                return Icons.batteryFull
            } else if (batteryPercent > highBattery) {
                return Icons.batteryHigh
            } else if (batteryPercent > mediumBattery) {
                return Icons.batteryMedium
            } else {
                return Icons.batteryLow
            }

            case UPowerDeviceState.Charging:
                return Icons.batteryCharging

            default:
                return Icons.batteryWarning
        }
    }
}
