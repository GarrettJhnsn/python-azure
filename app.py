from flask import Flask
import time
app = Flask(__name__)

@app.route('/')
def index():
    return "Hi People of Earth"

if __name__ == '__main__':
    app.run()