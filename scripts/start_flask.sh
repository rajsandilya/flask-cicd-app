#!/bin/bash
cd /web
sudo python3 web.py > /var/log/flask-app.log 2>&1 &
echo "Flask application started with sudo"
