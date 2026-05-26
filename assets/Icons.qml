pragma Singleton

import QtQuick
import Quickshell

Singleton {
    id: icons

    readonly property string batteryCharging: "../assets/icons/battery-charging.svg"
    readonly property string batteryEmpty: "../assets/icons/battery-empty.svg"
    readonly property string batteryFull: "../assets/icons/battery-full.svg"
    readonly property string batteryHigh: "../assets/icons/battery-high.svg"
    readonly property string batteryLow: "../assets/icons/battery-low.svg"
    readonly property string batteryMedium: "../assets/icons/battery-medium.svg"
    readonly property string batteryPlus: "../assets/icons/battery-plus.svg"
    readonly property string batteryWarning: "../assets/icons/battery-warning.svg"

    readonly property string headphones: "../assets/icons/headphones.svg"
    readonly property string headset: "../assets/icons/headset.svg"
    readonly property string microphoneSlash: "../assets/icons/microphone-slash.svg"
    readonly property string microphone: "../assets/icons/microphone.svg"

    readonly property string speakerHigh: "../assets/icons/speaker-simple-high.svg"
    readonly property string speakerLow: "../assets/icons/speaker-simple-low.svg"
    readonly property string speakerNone: "../assets/icons/speaker-simple-none.svg"
    readonly property string speakerSlash: "../assets/icons/speaker-simple-slash.svg"
    readonly property string speakerX: "../assets/icons/speaker-simple-x.svg"

    readonly property string wifiHigh: "../assets/icons/wifi-high.svg"
    readonly property string wifiLow: "../assets/icons/wifi-low.svg"
    readonly property string wifiMedium: "../assets/icons/wifi-medium.svg"
    readonly property string wifiNone: "../assets/icons/wifi-none.svg"
    readonly property string wifiSlash: "../assets/icons/wifi-slash.svg"
    readonly property string wifiX: "../assets/icons/wifi-x.svg"
}
