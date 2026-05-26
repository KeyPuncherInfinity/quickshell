import qs.services
import Quickshell
import Quickshell.Wayland
import QtQuick
import QtQuick.Effects
import QtQuick.Layouts
import Quickshell.Services.UPower
import qs.bars

PanelWindow {
    WlrLayershell.namespace: "infinity"
    color: "transparent"
    aboveWindows: true

    anchors.top: true
    anchors.bottom: true
    anchors.left: true
    anchors.right: true

    mask: Region {
        item: mask
        intersection: Intersection.Xor
    }

    Rectangle {
        anchors.fill: parent
        color: "#252525"

        layer.enabled: true
        layer.effect: MultiEffect {
            maskSource: mask
            maskEnabled: true
            maskInverted: true
            maskThresholdMin: 0.5
            maskSpreadAtMin: 1
        }

        Item {
            id: mask

            anchors.fill: parent
            layer.enabled: true
            visible: false

            Rectangle {
                anchors.fill: parent
                anchors.margins: 5
                anchors.topMargin: 30
                radius: 8
            }
        }

        TopBar{}
    }
}
