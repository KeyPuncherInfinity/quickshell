import qs.services
import Quickshell
import QtQuick
import QtQuick.Effects
import QtQuick.Layouts
import Quickshell.Services.UPower
import QtQuick.VectorImage
import Quickshell.Hyprland
import Quickshell.Widgets

RowLayout{
    anchors.right: parent.right
    anchors.verticalCenter: parent.verticalCenter
    anchors.margins: 10
    spacing: 6
    IconImage {
        implicitSize: 22
        source: getAppIcon()
        function getAppIcon () {
            const toplevel = Hyprland.activeToplevel.wayland.appId
            const d = DesktopEntries.heuristicLookup(toplevel)
            return Quickshell.iconPath(d.icon)
        }
    }
    Text {
        id: window_name
        text: Hyprland.activeToplevel.title
        color: layout.textColor
        font.pixelSize: 16
        elide: Text.ElideMiddle
        Layout.maximumWidth: parent.width * 0.9
    }
}
