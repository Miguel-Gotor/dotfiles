# Do not create an history file
import readline
readline.write_history_file = lambda *args: None
