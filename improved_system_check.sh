#!/bin/bash
##
# BASH menu script that checks:
# - Memory usage
# - CPU load
# - Number of TCP connections
# - Kernel version
##
server_name=$(hostname)

function memory_check() {
    echo ""
    echo "Memory usage on ${server_name} is:"
    free -h
    echo ""
}

function cpu_check() {
    echo ""
    echo "CPU load on ${server_name} is:"
    echo ""
    uptime
    echo ""
}

function tcp_check() {
    echo ""
    echo "TCP connections on ${server_name}:"
    echo ""
    cat /proc/net/tcp | wc -l
    echo ""
}

function kernel_check() {
    echo ""
    echo "Kernel version on ${server_name} is:"
    echo ""
    uname -r
    echo ""
}

function all_checks() {
    memory_check
    cpu_check
    tcp_check
    kernel_check
}

##
# Color Variables
##
green='\e[32m'
blue='\e[34m'
clear='\e[0m'

##
# Color Functions
##
ColorGreen() {
    echo -ne $green$1$clear
}

ColorBlue() {
    echo -ne $blue$1$clear
}

menu() {
    echo -ne "
My First Menu
$(ColorGreen '1)') Memory usage
$(ColorGreen '2)') CPU load
$(ColorGreen '3)') Number of TCP connections
$(ColorGreen '4)') Kernel version
$(ColorGreen '5)') Check All
$(ColorGreen '0)') Exit
$(ColorBlue 'Choose an option:') "

    read -r choice
    echo ""

    case $choice in
        1) memory_check ;;
        2) cpu_check ;;
        3) tcp_check ;;
        4) kernel_check ;;
        5) all_checks ;;
        0) exit 0 ;;
        *) echo -e "Wrong option." ;;
    esac

    echo ""
    read -p "Press Enter to continue..."
    menu
}

# Call the menu function
menu
