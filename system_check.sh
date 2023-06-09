#!/bin/bash

server_name=$HOSTNAME

function memory_check() {
    echo ""
    echo "Memory usage on $server_name is:"
    free -h
    echo ""
}

function cpu_check() {
    echo ""
    echo "CPU usage on $server_name is:"
    uptime
    echo ""
}

function tcp_check(){
    echo "TCP connections on $server_name is:"
    cat /proc/net/tcp | wc -l
    echo ""
}

function kernel_check(){
    echo ""
    echo "Kernel version on $server_name is:"
    echo ""
    uname -r
    echo ""
}

function all_check(){
    memory_check
    cpu_check
    tcp_check
    kernel_check
}

all_check