colorize() {
    declare $TRADR_DECLARE_ARGS colors
    colors[r]="\033[0;31m"
    
    echo -e ${colors[r]}
}
