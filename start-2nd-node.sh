#!/bin/sh
# spinning up new nodes
export FLASK_APP=node_server.py && flask run --port 8001
curl -X POST http://127.0.0.1:8001/register_with -H 'Content-Type: application/json' -d '{"node_address": "http://127.0.0.1:8000"}'
