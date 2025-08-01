# output file
Output pokemonsay.gif
Output pokemonsay.mp4

# set up terminal size and font characteristics
Set FontSize 16
Set Width 1920
Set Width 1080

# set margin and window bar
Set Margin 10
Set MarginFill "#6B50FF"
Set BorderRadius 10
Set WindowBar Rings

# Set Theme
Set Theme "Tomorrow Night Eighties"

# Set typing speed
Set TypingSpeed 0.05

# connect to ubuntu virtual server
Hide
Type "ssh ubuntunix"
Enter

# wait
Sleep 2000ms

Type "clear
Enter
Sleep 2s
Show

# wait until completes
Sleep 2s
Hide
Type "clear"
Enter
Show
Type "nix-shell -p pokemonsay"
Enter

Sleep 10s
Hide
Type "clear"
Enter
Sleep 1s
Show

# print a fun quote
Type "pokemonsay -p Pikachu -N 'Hello Shinyconf 2025!'"
Enter

Sleep 2s

Type "exit"
Enter
Sleep 3s

Type "pokemonsay --help"
Enter
Sleep 4s

Hide
Type "exit"


