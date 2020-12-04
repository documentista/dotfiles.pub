# env config for z shell
# see .zshrc for aliases, etc

# Add <user_home>/bin to PATH
if [ -d ~/bin ] ; then
    PATH=~/bin:"${PATH}"
fi

export SAUCE_USERNAME=sso-lm-Tom.Dolan
export SAUCE_ACCESS_KEY=7e0dbf18-aa78-465d-8cdc-b642f67a9723

export PATH="/usr/local/opt/node@12/bin:$PATH"

export SAM=/usr/local/bin/python3
