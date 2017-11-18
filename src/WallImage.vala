class WallImage : Gtk.DrawingArea {

    Gdk.Pixbuf pix;
    public WallImage(){
        Object();
        this.pix = new Gdk.Pixbuf.from_file("../images/test.jpg");
}


    construct {
        this.draw.connect((ctx) => {
            weak Gtk.StyleContext style_ctx = this.get_style_context();
            int height = this.get_allocated_height();
            int width = this.get_allocated_width();
            this.pix.scale_simple(height, width, Gdk.InterpType.BILINEAR);

            Gdk.RGBA color = style_ctx.get_color(0);
            Gdk.cairo_set_source_pixbuf(ctx, this.pix, 1, 1);
            ctx.paint();
            Gdk.cairo_set_source_rgba(ctx, color);
            ctx.fill();
            return true;
        });
    }


}
