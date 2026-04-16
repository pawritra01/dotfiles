import subprocess as sp

NAME = "[AUDIO]"

COMMANDS = ["Change Audio Input"]

def get_commands():
    f_commands = []
    for command in COMMANDS:
        f_commands.append(NAME + " " + command)

    return f_commands

def handler(selection: str):
    input = selection.replace(NAME + " ", "")
    match input:
        case "Change Audio Input":
            return change_audio_input()


def change_audio_input():
    sinks = get_sinks()

    # Format for display
    options = [f"{s['index']}: {s['name']}" for s in sinks]

    choice = rofi_menu(options)

    if choice:
        sp.run(['pactl', 'set-default-sink', choice.split(' ')[0]])
        print("Selected:", choice)

def get_sinks():
    result = sp.run(
        ["pactl", "list", "sinks"],
        stdout=sp.PIPE,
        stderr=sp.PIPE,
        text=True,
        check=True
    )

    sinks = []
    current_sink = {}

    for line in result.stdout.splitlines():
        line = line.strip()

        if line.startswith("Sink #"):
            # Save previous sink if exists
            if current_sink:
                sinks.append(current_sink)
                current_sink = {}

            current_sink["index"] = line.split("#")[1]

        elif line.startswith("device.product.name"):
            current_sink["name"] = line.split("device.product.name")[1].strip().replace('"', '')

    # Add last sink
    if current_sink:
        sinks.append(current_sink)

    return sinks

def rofi_menu(options):
    rofi = sp.Popen(
        ["rofi", "-dmenu", "-p", "Select Sink"],
        stdin=sp.PIPE,
        stdout=sp.PIPE,
        text=True
    )

    menu_input = "\n".join(options)
    out, _ = rofi.communicate(menu_input)
    return out.strip()
