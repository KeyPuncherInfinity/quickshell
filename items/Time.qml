import Quickshell
import QtQuick
import qs.services

Text {
    text: Qt.formatDateTime(Time.datetime, "HH:mm")
    color: layout.textColor
    font.pixelSize: 16
}
