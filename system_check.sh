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
    echo""
}

function all_check(){
    memory_check
    cpu_check
}

all_check