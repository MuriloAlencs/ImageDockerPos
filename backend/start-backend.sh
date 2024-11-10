#!/bin/bash

# Define environment variable
export FLASK_APP="run.py"
export FLASK_DB_TYPE="postgres"
export FLASK_DB_USER="myuser"
export FLASK_DB_NAME="mydb"
export FLASK_DB_PASSWORD="mypassword"
export FLASK_DB_HOST="postgres"
export FLASK_DB_PORT="5432"

# Run app.py when the container launches
flask run --host=0.0.0.0 --port=5000