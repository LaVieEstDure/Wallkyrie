class Window:Gtk.Window {

    public Window(){
        Object(title: "Wallkyrie",
               height_request: 700,
               width_request: 900,
               resizable: true);

        Gtk.Box window_container = new Gtk.Box(Gtk.Orientation.VERTICAL, 0);

        Gtk.Box options_box = new Gtk.Box(Gtk.Orientation.VERTICAL, 0);
        this.add(options_box);
        options_box.margin=10;
        window_container.pack_start(options_box);

        Gtk.Grid options_grid = new Gtk.Grid();
        Gtk.Button button1 = new Gtk.Button.with_label ("1");
        options_box.pack_start(options_grid, true, true, 0);
        options_grid.attach(button1, 0,0,1,1);


        this.show_all();
    }


    construct {
        this.show_all();
        this.destroy.connect(Gtk.main_quit);
        window_position = Gtk.WindowPosition.CENTER;
        MainHeader hb = new MainHeader();
        this.set_titlebar(hb);
    }


    public static int main (string[] args) {
        Gtk.init(ref args);
        Window win = new Window();
        Gtk.main();
        return 0;
    }
}

class MainHeader: Gtk.HeaderBar {

    public MainHeader(){
        Object();
    }

    construct{
        this.set_show_close_button(true);
        this.set_title("Wallkyrie");
    }
}
