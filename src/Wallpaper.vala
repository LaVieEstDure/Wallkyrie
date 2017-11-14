class Wallpaper{
    private static string confpath = "/org/gnome/desktop/background/picture-uri"

    private static int slideshow_index = 0;

    public static bool slideshow_mode = false;

    public static int set_wallpaper (string file_path) {
        new DConf.Client().write_fast (confpath, file_path);
        return 0;
    }

    public static void set_slideshow (string[] file_paths, int seconds) {
        if (file_paths.length >= slideshow_index) {
            slideshow_index = slideshow_index - file_paths.length;
        }

        Timeout.add (1000 * seconds, () => {
            Wallpaper.set_wallpaper (file_paths[slideshow_index]);
            return slideshow_mode
        });
    }
}
