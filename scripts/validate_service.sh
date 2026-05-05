#!/bin/bash
# Wait a moment for the service to start
sleep 5
# Check if the Flask process is running
if pgrep -f "python3.*web.py" > /dev/null; then
    echo "Flask process is running"
    # Test if the application responds
    if curl -f http://localhost/ > /dev/null 2>&1; then
        echo "Application is responding"
        exit 0
    else
        echo "Application is not responding"
        exit 1
    fi
else
    echo "Flask process is not running"
    exit 1
fi
