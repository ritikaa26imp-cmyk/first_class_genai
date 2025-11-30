#!/bin/bash
# Simple script to start a local web server for testing Google OAuth

echo "Starting local web server on http://localhost:8000"
echo "Open http://localhost:8000/login.html in your browser"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""

# Try Python 3 first, then Python 2, then suggest alternatives
if command -v python3 &> /dev/null; then
    python3 -m http.server 8000
elif command -v python &> /dev/null; then
    python -m SimpleHTTPServer 8000
else
    echo "Python not found. Please install Python or use:"
    echo "  npx http-server (requires Node.js)"
    echo "  php -S localhost:8000 (requires PHP)"
fi

