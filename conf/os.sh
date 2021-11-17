os="$(uname)"

if [ $os = "Darwin" ]; then
    export TRADR_DECLARE_ARGS=-a
else
    export TRADR_DECLARE_ARGS=-A
fi
