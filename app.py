from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/")
def home():
    return jsonify({"message": "Hello,Je suis Wajdi Ben Ameur Numero Telephone 52238366"})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
