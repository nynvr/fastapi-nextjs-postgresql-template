#!/bin/sh

echo "API - Running in development mode..."

fastapi dev app/main.py --host 0.0.0.0 --port 8000