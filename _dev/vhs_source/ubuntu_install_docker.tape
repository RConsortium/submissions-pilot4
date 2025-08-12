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
Set TypingSpeed 0.05s

# connect to virtual machine via ssh
Hide
Type "ssh pilot4vm"
Enter
Sleep 2s
Type "clear"
Enter
Sleep 1s

# add docker official gpg key
Show
Type "# Add Docker's official GPG key"
Enter
Sleep 1s
Type "sudo apt update"
Enter
Sleep 4s
Type "sudo apt install -y ca-certificates curl"
Sleep 1s
Enter
Sleep 8s

Hide
Type "clear"
Enter
Sleep 1s

Show
Type "sudo install -m 0755 -d /etc/apt/keyrings"
Sleep 1s
Enter
Sleep 1s
Type "sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc"
Sleep 1s
Enter
Sleep 1s
Type "sudo chmod a+r /etc/apt/keyrings/docker.asc"
Sleep 1s
Enter

Hide
Type "clear"
Enter
Sleep 1s

# add repository to sources
Show
Type "# Add the Docker package repository to Ubuntu package sources"
Sleep 1s
Enter
Sleep 1s

Type "echo \"
Enter
Type '"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \'
Sleep 1s
Enter
Type '$(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \'
Sleep 1s
Enter
Type 'sudo tee /etc/apt/sources.list.d/docker.list > /dev/null'
Sleep 1s
Enter
Sleep 1s

Hide
Type "clear"
Enter
Sleep 1s

Show
Type "# Refresh package repository"
Sleep 1s
Enter
Sleep 1s
Type "sudo apt update"
Sleep 1s
Enter
Sleep 4s

Hide
Type "clear"
Enter
Sleep 1s

Show
Type "# Install docker linux packages"
Sleep 1s
Enter
Type "sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin"
Sleep 1s
Enter
Sleep 25s

Hide
Type "clear"
Enter
Sleep 1s

Show
Type "# Enable docker commands without sudo"
Sleep 1s
Enter
Sleep 1s
Type "sudo groupadd docker"
Sleep 1s
Enter
Sleep 1s
Type "sudo usermod -aG docker $USER"
Sleep 1s
Enter
Sleep 1s
Type "newgrp docker"
Sleep 1s
Enter
Sleep 1s

Hide
Type "clear"
Enter
Sleep 1s

Show
Type "# Start Docker process"
Sleep 1s
Enter
Type "sudo systemctl start docker"
Sleep 1s
Enter
Sleep 1s
Type "# Verify Docker is running"
Sleep 1s
Enter
Sleep 1s
Type "sudo systemctl status docker"
Sleep 1s
Enter
Sleep 4s
Type "q"
Enter

Hide
Type "clear"
Enter
Sleep 1s

Show
Type "# Exit virtual machine"
Sleep 1s
Enter
Sleep 1s
Type "exit"
Enter
Sleep 1s
