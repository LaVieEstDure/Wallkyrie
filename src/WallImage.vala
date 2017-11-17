class WallImage : Gtk.Image {

    public WallImage(){
        Object();
        this.margin = 25;
        var pixbuf = new Gdk.Pixbuf.from_file_at_scale("../images/test.jpg", -1, 200, true);
        this.set_from_pixbuf(pixbuf);
    }

    public int update(){
        Gtk.Allocation allocation;
        this.get_allocation(out allocation);
        Gdk.Pixbuf pixbuf = this.pixbuf.scale_simple(allocation.width, allocation.height,
                                              Gdk.InterpType.BILINEAR);
        this.set_from_pixbuf(pixbuf);
        return 0;
    }

    construct {
        this.connect("expose-events", this.update);
    }

}
