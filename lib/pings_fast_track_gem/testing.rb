require "tty-prompt"

prompt = TTY::Prompt.new


size = prompt.slider('Time', max: 24, step: 0.05, format: "|:slider| %.2f")
# =>
# Volume ──────────●────────── 50
# (Use arrow keys, press Enter to select)