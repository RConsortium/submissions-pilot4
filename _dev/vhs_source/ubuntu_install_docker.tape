# Pre-requisites
# Create a Ubuntu virtual machine using quickemu
# - Install openssh server
# - Configure user account on vm to have authorized key corresponding to the host computer account ssh key
# - Configure sudo without needing a password capability using instructions from https://spinupwp.com/doc/passwordless-sudo/
# - Launch VM in headless mode: `quickemu --vm ubuntu-22.04.conf --display none`
# - Verify host user account can connect to vm user account without password by creating an entry in `~/.ssh/config`

# output file
Output ubuntu_install_docker.gif
Output ubuntu_install_docker.mp4

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

# debugging: connecting to virtual machine via ssh
Show
Type "ssh pilot4vm"
Enter

Sleep 2s

# Type silly command
Type "pwd"
Enter

Sleep 1s

# Exit VM session
Type "exit"
Enter

Sleep 2s
