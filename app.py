from flask import Flask, jsonify
import os

app = Flask(__name__)

# A simple endpoint to test the app
@app.route('/')
def index():
    return jsonify({
        'message': 'Hello from Flask running inside Docker!',
        'database_url': os.environ.get('DATABASE_URL', 'Not set')
    })

if __name__ == '__main__':
    # For development use; production servers should be run with a WSGI server.
    app.run(host='0.0.0.0', port=5000, debug=True)
