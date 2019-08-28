alias diff='diff --strip-trailing-cr'
alias rm='rm -i'
alias mv='mv -i'
alias ll='ls -lF --color=auto'
alias la='ls -alF --color=auto'
alias ls='ls --color'
alias rs="repo sync -c -j4 --no-tags;repo forall -c 'test -e .lfsconfig && git lfs pull;'"
alias rsd="repo sync -c -d -j4 --no-tags && repo forall -c 'test -e .lfsconfig && git lfs pull'"
alias asn="adb shell getprop ro.serialno"
# Send text to your device.
alias atext='adb shell input text'
# Send the BACK keypress to your device
alias aback='adb shell input keyevent KEYCODE_BACK'
alias mux=tmuxinator
alias powerctrl='telnet 169.254.1.02'
alias rmate="rmate --port 52699"
