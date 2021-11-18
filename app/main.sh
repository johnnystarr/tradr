logo

# determine if ANSI colors are ok
read -p "Does your terminal support ANSI colors? [y/n]" response_color

if [ $response_color = "y" ]; then
    export TRADR_ANSI_COLOR_SUPPORT=1
    say "_g_G_r_r_y_o_c_o_m_v_b_y_W_!_x_"
else
    export TRADR_ANSI_COLOR_SUPPORT=0
    say ":("
fi
