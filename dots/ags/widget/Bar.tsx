import { App, Astal, Gtk, Gdk } from "astal/gtk4";
import { Variable } from "astal";

export default function Bar(gdkmonitor: Gdk.Monitor) {
  const { TOP, LEFT, RIGHT } = Astal.WindowAnchor;
  const time = Variable("").poll(1000, 'date +"%I:%M %p"');

  return (
    <window
      visible
      cssClasses={["Bar"]}
      gdkmonitor={gdkmonitor}
      exclusivity={Astal.Exclusivity.IGNORE}
      anchor={TOP | LEFT | RIGHT}
      application={App}
    >
      <centerbox cssName="centerbox">
        <button
          onClicked={() => App.toggle_window("AppSelector")}
          hexpand
          halign={Gtk.Align.START}
        >
          Welcome to AGS!
        </button>
        <box />
        <menubutton hexpand halign={Gtk.Align.END}>
          <image iconName="image-symbolic" />
          <label label={time()} />
          <popover>
            <Gtk.Calendar />
          </popover>
        </menubutton>
      </centerbox>
    </window>
  );
}
