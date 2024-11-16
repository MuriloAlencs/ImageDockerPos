#!/bin/sh

# Define environment variables with default values
export FLASK_APP="run.py"
export FLASK_DB_TYPE="${FLASK_DB_TYPE:-postgres}"
export FLASK_DB_USER="${FLASK_DB_USER:-myuser}"
export FLASK_DB_NAME="${FLASK_DB_NAME:-mydb}"
export FLASK_DB_PASSWORD="${FLASK_DB_PASSWORD:-mypassword}"
export FLASK_DB_HOST="${FLASK_DB_HOST:-postgres}"  # Usa o valor passado de fora, se disponível
export FLASK_DB_PORT="${FLASK_DB_PORT:-5432}"

# Run app.py when the container launches
python -m flask run --host=0.0.0.0 --port=5000
