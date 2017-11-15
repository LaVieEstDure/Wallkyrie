public class Wallkyrie : Gtk.Application {

    public Wallkyrie(){
        Object(application_id: "com.github.LaVieEstDure.Wallkyrie",
               flags: ApplicationFlags.FLAGS_NONE);
    }


    protected override void activate(){
        var app_window = new MainWindow();
        app_window.show_all();
        Gtk.main();
    }


    public static int main (string[] args) {
        Gtk.init(ref args);
        var app = new Wallkyrie();
        return app.run(args);
    }

}
