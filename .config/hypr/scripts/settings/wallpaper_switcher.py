import os
import random
import subprocess as sp

NAME = "[WALLPAPER]"

COMMANDS = ["Switch Wallpaper"]

def get_commands():
    f_commands = []
    for command in COMMANDS:
        f_commands.append(NAME + " " + command)

    return f_commands

def handler(selection: str):
    input = selection.replace(NAME + " ", "")
    match input:
        case 'Switch Wallpaper':
            return random_wallpaper()


def random_wallpaper():
    dir = '/home/pawritra/Pictures/Wallpapers/'
    items = os.listdir(dir)

    if len(items) <= 0:
      exit(0)

    random.shuffle(items)
    wallpaper = dir + items[0]

    sp.run(['awww', 'img', wallpaper])
    sp.run(['matugen', 'image', wallpaper, '--source-color-index', '0'])
    sp.run(['bash', '/home/pawritra/.config/waybar/scripts/launch.sh'])

