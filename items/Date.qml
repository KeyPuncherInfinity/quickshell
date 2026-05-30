import Quickshell
import QtQuick
import QtQuick.Layouts
import qs.services

Text {
    text: Qt.formatDateTime(Time.datetime, "dd/MM")
    color: layout.textColor
    font.pixelSize: 16
}
