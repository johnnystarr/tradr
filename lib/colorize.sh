colorize() {
    str="$1"

    declare $TRADR_DECLARE_ARGS colors
    colors[_r_]="\033[0;31m"
    colors[_g_]="\033[0;32m"
    colors[_y_]="\033[0;33m"
    colors[_b_]="\033[0;34m"
    colors[_m_]="\033[0;35m"
    colors[_c_]="\033[0;36m"
    colors[_x_]="\033[0;37m"
    colors[_R_]="\033[1;31m"
    colors[_G_]="\033[1;32m"
    colors[_Y_]="\033[1;33m"
    colors[_B_]="\033[1;34m"
    colors[_M_]="\033[1;35m"
    colors[_C_]="\033[1;36m"
    colors[_W_]="\033[1;37m"

    for k in "${!colors[@]}"; do
        if [ $TRADR_ANSI_COLOR_SUPPORT = 1 ]; then
            escaped_value=$(echo "${colors[$k]}" | sed -e 's/\\/\\\\/g')
            str=$(echo $str | sed "s/$k/$escaped_value/g")
        else
            str=$(echo $str | sed "s/$k//g")
        fi
    done

    echo "$str"
}
