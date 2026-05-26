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
        implicitWidth: wifi_icon.width
        implicitHeight: wifi_icon.height
        VectorImage {
            id: wifi_icon
            source: Power.getBatteryIcon()
            width: 32
            height: 32
        }
    }
    Item {
        implicitWidth: battery_percent.width
        Layout.fillHeight: true
        Text {
            id: battery_percent
            anchors.centerIn: parent
            text: Power.batteryPercent
            color: layout.textColor
            font.pixelSize: 15
        }
    }
}
