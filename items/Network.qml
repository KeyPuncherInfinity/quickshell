import QtQuick
import QtQuick.Effects
import QtQuick.Layouts
import Quickshell.Services.UPower
import QtQuick.VectorImage
import qs.services

RowLayout{
    anchors.right: parent.right
    anchors.verticalCenter: parent.verticalCenter
    anchors.margins: 10
    spacing: 6
    Item {
        implicitWidth: network_icon.width
        implicitHeight: network_icon.height
        VectorImage {
            id: network_icon
            source: Networking.getNetworkIcon()
            width: 32
            height: 32
        }
    }
    Item {
        implicitWidth: network_state.width
        Layout.fillHeight: true
        Text {
            id: network_state
            anchors.centerIn: parent
            text: Networking.getNetworkStatus()
            color: layout.textColor
            font.pixelSize: 15
        }
    }
}
