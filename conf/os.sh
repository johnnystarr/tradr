#------------------------------------------------------------------------------
#  OS Checks
#------------------------------------------------------------------------------

TRADR_OS=$(uname)
if [ $TRADR_OS = "Darwin" ]; then
    if [ $SHELL = "/bin/zsh" ]; then
        export TRADR_DECLARE_ARGS=-A
        echo "Using ZSH"
    else
        export TRADR_DECLARE_ARGS=-a
    fi
else
    export TRADR_DECLARE_ARGS=-A
fi
