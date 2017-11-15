project('Wallhalla', 'c', 'vala')

gtk = dependency('gtk+-3.0')
granite = dependency('granite')
dconf = dependency('dconf')
dbus = dependency('dbus')
executable('wallpaper',
           './src/Window.vala',
           './src/Wallpaper.vala',
           './src/Wallkyrie.vala',
           dependencies :[gtk, granite, dconf, dbus])
