colorize() {
    declare $TRADR_DECLARE_ARGS colors
    colors[r]="\e[0;31m"
    
    echo -e ${colors[r]}
}
