project('Wallhalla', 'c', 'vala')

# Dependencies
gtk = dependency('gtk+-3.0')
granite = dependency('granite')
dconf = dependency('dconf')
dbus = dependency('dbus-glib-1')
gio = dependency('gio-2.0')

executable('Wallkyrie',
           './src/Window.vala',
           './src/Wallpaper.vala',
           './src/Wallkyrie.vala',
           './src/WallImage.vala',
           dependencies :[gtk, granite, dconf, dbus, gio])
