from flask import Flask
import os
import socket

app = Flask(__name__)

@app.route("/")
def showPinehead():
    html = "<div style='text-align:center;margin:20px;'><h1>Hello World, Greeting from DXC Technology!</h1></div>"
    return html

if __name__ == "__main__":
  app.run(host='0.0.0.0', port=80)
