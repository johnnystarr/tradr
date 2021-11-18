TRADR_OS=$(uname)
if [ $TRADR_OS = "Darwin" ]; then
    export TRADR_DECLARE_ARGS=-a
else
    export TRADR_DECLARE_ARGS=-A
fi
