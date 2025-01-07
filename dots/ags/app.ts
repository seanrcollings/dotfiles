import { App } from "astal/gtk4";
import style from "./styles/styles.scss";
import Bar from "./widget/Bar";
import { AppSelector } from "./widget/apps/App";

App.start({
  css: style,
  icons: "assets/icons",
  main() {
    App.get_monitors().map(Bar);
    AppSelector(App.get_monitors()[1]);
  },
});
