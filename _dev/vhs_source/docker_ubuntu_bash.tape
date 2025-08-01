# output file
Output docker_ubuntu_bash.gif
Output docker_ubuntu_bash.mp4

# set up terminal size and font characteristics
Set FontSize 20
Set Width 1920
Set Width 1080

# set padding
Set Padding 20

# optional: set margin
#Set Margin 10
#Set MarginFill "#6B50FF"
#Set BorderRadius 10

# optional: set window bar
Set WindowBar ColorfulRight

# Set Theme
Set Theme "Tomorrow Night Eighties"

# Set typing speed
Set TypingSpeed 0.2

# execute docker run -it ubuntu bash
Show
Type "docker run -it ubuntu bash"
Enter

Sleep 4s

# execute command as root
Type "echo $HOME"
Enter

Sleep 2s

# exit from container
Type "exit"
Enter

Sleep 2s

