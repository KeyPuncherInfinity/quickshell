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
        implicitWidth: volume_icon.width
        implicitHeight: volume_icon.height
        VectorImage {
            id: volume_icon
            source: AudioOut.getVolumeIcon()
            width: 32
            height: 32
        }
    }
    Item {
        implicitWidth: volume_percent.width
        Layout.fillHeight: true
        Text {
            id: volume_percent
            anchors.centerIn: parent
            text: AudioOut.getVolume()
            color: layout.textColor
            font.pixelSize: 15
        }
    }
}
