class MainWindow:Gtk.Window {

    public MainWindow(){
        Object(title: "Wallkyrie",
               height_request: 500,
               width_request: 700,
               resizable: true);

    /*
     __________________________________________
    |        window container (Gtk.Box)        |
    | __________________     _________________ |
    ||  options box     |   |   image box     ||
    ||   (Gtk.Box)      |   |    (Gtk.Box)    ||
    || ________________ |   | _______________ ||
    ||| options grid   ||   ||   images      |||
    |||  (Gtk.Grid)    ||   ||   (Gtk.Image) |||
    |||                ||   ||               |||
    |||                ||   ||               |||
    |||                ||   ||               |||
    |||________________||   ||_______________|||
    ||__________________|   |_________________||
    |__________________________________________|

            S E L F - D O C U M E N T I N G
    */

        Gtk.Box window_container = new Gtk.Box(Gtk.Orientation.HORIZONTAL, 0);

        Gtk.Box options_box = new Gtk.Box(Gtk.Orientation.VERTICAL, 0);
        this.add(options_box);
        options_box.margin=30;
        window_container.pack_start(options_box);

        Gtk.Grid options_grid = new Gtk.Grid();
        options_grid.row_spacing = 20;
        options_grid.column_spacing = 15;
        options_box.pack_start(options_grid, true, true, 0);


        Gtk.Button file_chooser = new Gtk.Button.with_label("Choose Images");
        options_grid.attach(file_chooser, 0,0,1,1);

        Gtk.SpinButton timer = new Gtk.SpinButton.with_range(1, 60,1);
        options_grid.attach(timer, 0, 1, 1, 1);

        Gtk.Button OK = new Gtk.Button.with_label("OK");
        options_box.pack_end(OK, false, false, 0);
        this.show_all();


    }


    construct {
        this.show_all();
        this.destroy.connect(Gtk.main_quit);
        window_position = Gtk.WindowPosition.CENTER;
        MainHeader hb = new MainHeader();
        this.set_titlebar(hb);
    }


}

class MainHeader: Gtk.HeaderBar {

    public MainHeader(){
        Object();
        Gtk.Button settings = new Gtk.Button.from_icon_name("preferences-system-symbolic");
        this.pack_end(settings);
    }


    construct{
        this.set_show_close_button(true);
        this.set_title("Wallkyrie");
    }
}
