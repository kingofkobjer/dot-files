if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
if [ -d "$HOME/.local/.bin" ] ; then
    PATH="$HOME/.local/.bin:$PATH"
fi
if [ -d "$HOME/tools/android-studio/bin/" ] ; then
    PATH="$HOME/tools/android-studio/bin/:$PATH"
fi
if [ -d "/usr/lib/w3m/" ] ; then
    PATH="/usr/lib/w3m/:$PATH"
fi
export T32PDFVIEWER=/home/t32/bin/pc_linux64/t32_startpdfviewer.sh
