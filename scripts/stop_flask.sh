#!/bin/bash
# Alternative method to stop Flask - kill by process
pkill -f "python.*web.py" || echo "No Flask process found"
