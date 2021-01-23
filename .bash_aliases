# LS
alias l.='ls -d .* --color=auto'
alias ll='ls -l --color=auto'
alias ls='ls --color=auto'
alias root='sudo -u root -i'
alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'

# Update
alias update='sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y'

#screen 
alias cls='clear'

#dir
alias ..='cd ..'
alias home='cd ~'
alias cd..='cd ..'

#Grep
alias gh='history|grep'
alias h='history 100'     

#Network
##Ports
alias ports='sudo netstat -tulanp'

## ssh
alias sshstart='eval $(ssh-agent) && ssh-add'


#system
alias meminfo='free -m -l -t'

# Filesystem diskspace usage
alias dus='df -h'

#WLS kun på windows
alias exp='explorer.exe .'

# Tid
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

HISTTIMEFORMAT="%d/%m/%y %T: "

# GIT
# git add commit push default 
## usage
# gacpd
function gacpd() {
    echo "This will add, commit and push all the files to the master branch with the comment 'small fixes'"
    read -p "Do you want to proceed? y/n " -n 1 -r
    if [[ "$REPLY" =~ ^([yY][eE][sS]|[yY])+$ ]]
    then
        git add .
        git commit -m "small fixes"
        git push origin main
    else
        echo -e "\n Quit."
    fi
}
