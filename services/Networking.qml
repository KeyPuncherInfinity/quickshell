pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Networking
import qs.assets


Singleton {
    id: root

    readonly property int connectivity: Networking.connectivity

    readonly property WifiDevice wifi_dev: null
    readonly property WifiDevice ethernet_dev: null

    Component.onCompleted: {
        for (let dev of Networking.devices.values) {
            if (dev.type === DeviceType.Wifi) {
                wifi_dev = dev
            } else if (dev.type === DeviceType.Wired) {
                ethernet_dev = dev
            }
        }
    }

    function getNetworkName() {
        if (wifi_dev.connected) {
            console.log(wifi_dev.networks)
        }
    }

    function getNetworkIcon() {
        switch (connectivity) {
            case NetworkConnectivity.Portal:

            case NetworkConnectivity.Full:
            return Icons.wifiHigh

            case NetworkConnectivity.Limited:

            case NetworkConnectivity.Unknown:
            return Icons.wifiSlash

            case NetworkConnectivity.None:
            return Icons.wifiNone

            default:
            return Icons.wifiNone
        }
    }


    function getNetworkStatus() {
        switch (connectivity) {
            case NetworkConnectivity.Portal:
            return "Login"

            case NetworkConnectivity.Full:
            return "Ready"

            case NetworkConnectivity.Limited:
            return "Limited"

            case NetworkConnectivity.Unknown:
            return "Unknown"

            case NetworkConnectivity.None:
            return "Unavaialable"
        }
    }
}
