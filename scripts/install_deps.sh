#!/bin/bash
# install_deps.sh - Install system-wide dependencies for root execution

echo "Installing system-wide Python dependencies..."

# Install Flask and other dependencies system-wide
pip3 install --system Flask==3.1.1 requests==2.31.0

# Verify installation
python3 -c "import flask; print(f'Flask {flask.__version__} installed successfully')"

echo "Dependencies installation completed"
