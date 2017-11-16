project('Wallhalla', 'c', 'vala')

# Dependencies
gtk = dependency('gtk+-3.0')
granite = dependency('granite')
dconf = dependency('dconf')
dbus = dependency('dbus-glib-1')

executable('Wallkyrie',
           './src/Window.vala',
           './src/Wallpaper.vala',
           './src/Wallkyrie.vala',
           dependencies :[gtk, granite, dconf, dbus])
