import { Variable } from "astal";
import { App, Astal, Gdk, Gtk } from "astal/gtk4";
import Apps from "gi://AstalApps";

const apps = new Apps.Apps({
  nameMultiplier: 2,
  entryMultiplier: 0,
  executableMultiplier: 2,
});

export function chunks<T>(array: T[], size: number): T[][] {
  const result: T[][] = [];
  for (let i = 0; i < array.length; i += size) {
    result.push(array.slice(i, i + size));
  }
  return result;
}

export function AppSelector(gdkmonitor: Gdk.Monitor) {
  const search = Variable("");

  return (
    <window
      name="AppSelector"
      visible
      cssClasses={["AppSelector"]}
      gdkmonitor={gdkmonitor}
      exclusivity={Astal.Exclusivity.IGNORE}
      application={App}
      keymode={Astal.Keymode.ON_DEMAND}
      onKeyPressed={(self, keyval, keycode) =>
        keyval === Gdk.KEY_Escape && self.hide()
      }
    >
      <box orientation={Gtk.Orientation.VERTICAL}>
        <entry onNotifyText={(self) => search.set(self.text)} />

        <box orientation={Gtk.Orientation.VERTICAL} cssClasses={["apps-list"]}>
          {search((query) =>
            chunks(apps.fuzzy_query(query), 4).map((apps) => (
              <box>
                {apps.map((app) => (
                  <button
                    widthRequest={50}
                    heightRequest={50}
                    label={app.name}
                    onClicked={() => print(app.name)}
                  />
                ))}
              </box>
            ))
          )}
        </box>
      </box>
    </window>
  );
}
