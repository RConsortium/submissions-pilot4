# output file
Output docker_file_build.gif
Output docker_file_build.mp4

# set up terminal size and font characteristics
Set FontSize 15
Set Width 2120
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

# build new container image
Show
Type@0.1 "docker build -t r_container_from_file ."
Enter

Sleep 60s

Hide
Type "clear"
Enter
Show

# run container
Type "docker run r_container_from_file"
Enter
Sleep 4s
