#!/bin/bash
if [ "$1" = "cpu" ]; then
    echo "=== CPU ==="
    top -bn1 | grep "Cpu(s)"
elif [ "$1" = "mem" ]; then
    echo "=== MEMORY ==="
    free -h
elif [ "$1" = "disk" ]; then
    echo "=== DISK ==="
    df -h | grep '^/dev/'
elif [ "$1" = "all" ]; then
    echo "=== CPU ==="
    top -bn1 | grep "Cpu(s)"
    echo ""
    echo "=== MEMORY ==="
    free -h
    echo ""
    echo "=== DISK ==="
    df -h | grep '^/dev/'
else
    echo "Usage: ./monitor.sh [cpu|mem|disk|all]"
fi
