import QtQuick
import qs.Common
import qs.Modules.Plugins
import qs.Widgets

PluginSettings {
    id: root
    pluginId: "swayMode"

    StyledText {
        width: parent.width
        text: "Sway Mode Display"
        font.pixelSize: Theme.fontSizeLarge
        font.weight: Font.Bold
        color: Theme.surfaceText
    }

    StyledText {
        width: parent.width
        text: "Shows the current Sway binding mode (resize, passthrough, etc.)"
        font.pixelSize: Theme.fontSizeSmall
        color: Theme.surfaceVariantText
        wrapMode: Text.WordWrap
    }

    BoolSetting {
        settingKey: "hideDefault"
        label: "Hide Default Mode"
        description: "Only show widget when not in default mode"
        defaultValue: true
    }

    StringSetting {
        settingKey: "customIcon"
        label: "Icon"
        description: "Material Design icon name for mode display"
        placeholder: "keyboard"
        defaultValue: "keyboard"
    }
}
