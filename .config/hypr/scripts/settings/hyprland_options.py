import subprocess as sp

NAME = "[HYPRLAND]"

COMMANDS = ["Keybinds", "Display"]

def get_commands():
    f_commands = []
    for command in COMMANDS:
        f_commands.append(NAME + " " + command)

    return f_commands

def handler(selection: str):
    input = selection.replace(NAME + " ", "")
    match input:
        case 'Keybinds':
            return open_keybinds()
        case 'Display':
            return open_display()
        case _:
            pass


def open_keybinds():
    _ = sp.run('kitty nvim ~/.config/hypr/configs/keybinds.conf'.split(" "))

def open_display():
    _ = sp.run('kitty nvim ~/.config/hypr/configs/display.conf'.split(" "))

