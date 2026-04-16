import subprocess as sp

NAME = "[POWER]"

COMMANDS = ["Suspend", 'Restart', 'Poweroff']

def get_commands():
    f_commands = []
    for command in COMMANDS:
        f_commands.append(NAME + " " + command)

    return f_commands

def handler(selection: str):
    input = selection.replace(NAME + " ", "")
    match input:
        case 'Suspend':
            return suspend()
        case 'Reboot':
            return reboot()
        case 'Poweroff':
            return shutdown()


def shutdown():
    _ = sp.run('systemctl poweroff'.split(""))

def suspend():
    _ = sp.run('systemctl suspend'.split(""))

def reboot():
    _ = sp.run('systemctl reboot'.split(""))
