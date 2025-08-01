# output file
Output docker_console_build.gif
Output docker_console_build.mp4

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

# launch new container
Show
Type@0.05 "docker run --name ubuntu_container -it ubuntu bash"
Enter

Sleep 2s

# update package manager
Type "apt update"
Enter

Sleep 8s

Hide
Type "clear"
Enter
Show

# configure time zone
Type@0.01 "ln -sf /usr/share/zoneinfo/America/New_York /etc/localtime"
Enter
Sleep 1s
Type@0.05 "echo America/New_York > /etc/timezone"
Enter
Sleep 1s

Hide
Type "clear"
Enter
Show

# install tzdata
Type@0.1 "apt install -y tzdata"
Enter
Sleep 5s

Hide
Type "clear"
Enter
Show

# install dependencies
Type@0.05 "apt install -y --no-install-recommends software-properties-common dirmngr wget"
Enter
Sleep 30s

Hide
Type "clear"
Enter
Show

# install signing key
Type@0.01 "wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc"
Enter
Sleep 2s

Type@0.01 'add-apt-repository -y "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"'
Enter
Sleep 5s

Hide
Type "clear"
Enter
Show

# install R
Type@0.05 "apt install -y --no-install-recommends r-base"
Enter
Sleep 20s

Hide
Type "clear"
Enter
Show

# Launch R
Type "R"
Enter
Sleep 1s

# Exit R
Type "q(save = 'no')"
Enter
Sleep 2s

Hide
Type "clear"
Enter
Show

# Exit container
Type "exit"
Enter
Sleep 3s
