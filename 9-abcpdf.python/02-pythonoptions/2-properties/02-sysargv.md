# SysArgv Property

## Notes

Gets or sets the command-line arguments in sys.argv.

The sys.argv is a simple list in Python that holds the command-line arguments passed to a script when you run it from a terminal or command prompt. The first item, sys.argv[0], is always the name of the script itself. Any extra words you type after the script name become the next items in the list, like sys.argv[1], sys.argv[2], and so on.

For example, if you run python my_script.py hello 42, then sys.argv will be ['my_script.py', 'hello', '42']. This lets your script read user inputs directly from the command line without waiting for extra typing inside the program.
