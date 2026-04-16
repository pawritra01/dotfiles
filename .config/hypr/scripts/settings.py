import subprocess as sp

from settings import power_options, wallpaper_switcher, audio_options

if __name__ == '__main__':
    options = [
        *wallpaper_switcher.get_commands(),
        *audio_options.get_commands(),
        *power_options.get_commands(),
    ]

    rofi = f'rofi -dmenu -i -p Settings'.split()
    rofi_input = '\n'.join(x for x in options)

    cp = sp.run(rofi, input=rofi_input, encoding='utf-8', capture_output=True)
    if cp.returncode == 0:
        selection = cp.stdout.strip()

        power_options.handler(selection)
        wallpaper_switcher.handler(selection)
        audio_options.handler(selection)
