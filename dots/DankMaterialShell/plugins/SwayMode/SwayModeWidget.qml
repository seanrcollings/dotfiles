import QtQuick
import Quickshell.Io
import qs.Common
import qs.Widgets
import qs.Modules.Plugins

PluginComponent {
    id: root

    property string currentMode: "default"
    property bool hideDefault: pluginData.hideDefault ?? true
    property string customIcon: pluginData.customIcon || "keyboard"

    visible: hideDefault ? currentMode !== "default" : true

    Process {
        id: swayModeWatcher
        command: ["swaymsg", "-t", "subscribe", "-m", '["mode"]']
        running: true

        stdout: SplitParser {
            onRead: (data) => {
                try {
                    var event = JSON.parse(data)
                    if (event && event.change) {
                        root.currentMode = event.change
                    }
                } catch (e) {
                    console.warn("Failed to parse Sway mode event:", e)
                }
            }
        }

        onExited: (code, status) => {
            if (code !== 0) {
                console.warn("swaymsg mode subscription failed:", code, status)
            }
        }
    }

    Component.onCompleted: {
        queryCurrentMode.running = true
    }

    Process {
        id: queryCurrentMode
        command: ["swaymsg", "-t", "get_binding_state"]
        running: false

        stdout: SplitParser {
            onRead: (data) => {
                try {
                    var result = JSON.parse(data)
                    if (result && result.name) {
                        root.currentMode = result.name
                    }
                } catch (e) {
                    console.warn("Failed to parse Sway binding state:", e)
                }
            }
        }
    }

    horizontalBarPill: Component {
        Row {
            spacing: Theme.spacingS

            DankIcon {
                name: root.customIcon
                size: Theme.iconSize
                color: Theme.primary
                anchors.verticalCenter: parent.verticalCenter
            }

            StyledText {
                text: root.currentMode
                font.pixelSize: Theme.fontSizeMedium
                color: Theme.surfaceText
                anchors.verticalCenter: parent.verticalCenter
            }
        }
    }

    verticalBarPill: Component {
        Column {
            spacing: Theme.spacingXS

            DankIcon {
                name: root.customIcon
                size: Theme.iconSize
                color: Theme.primary
                anchors.horizontalCenter: parent.horizontalCenter
            }

            StyledText {
                text: root.currentMode
                font.pixelSize: Theme.fontSizeSmall
                color: Theme.surfaceText
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }
}
