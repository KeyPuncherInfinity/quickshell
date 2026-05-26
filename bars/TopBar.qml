import qs.services
import Quickshell
import QtQuick
import QtQuick.Layouts
import Quickshell.WindowManager
import Quickshell.Hyprland
import Quickshell.Networking
import Quickshell.Widgets
import qs.items

Item{ 
    anchors.top: parent.top
    anchors.left: parent.left
    anchors.right: parent.right
    height: 31
    RowLayout {
        id: layout

        property color textColor: "#FF0000"

        anchors.fill: parent
        anchors.leftMargin: 20
        anchors.rightMargin: 20
        uniformCellSizes: true

        Rectangle {
            color: "transparent"
            Layout.fillWidth: true
            Layout.fillHeight: true
            Row {
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                anchors.margins: 10
                spacing: 20
                Time {
                    id: time
                }
                Date {
                    id: date
                }
            }
        }

        Rectangle {
            color: "transparent"
            Layout.fillWidth: true
            Layout.fillHeight: true
            RowLayout {
                anchors.centerIn: parent
                spacing: 10
                Window {
                    id: window
                }
            }
        }
        Rectangle {
            color: "transparent"
            Layout.fillWidth: true
            Layout.fillHeight: true
            Row {
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                anchors.margins: 10
                spacing: 10
                Item {
                    implicitWidth: network.width
                    implicitHeight: network.height
                    Network {
                        id: network
                    }
                }
                Item {
                    implicitWidth: audio.width
                    implicitHeight: audio.height
                    Audio {
                        id: audio
                    }
                }
                Item {
                    implicitWidth: battery.width
                    implicitHeight: battery.height
                    Battery{
                        id: battery
                    }
                }
            }
        }
    }
}
