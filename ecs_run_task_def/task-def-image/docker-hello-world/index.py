from flask import Flask
import os
from random import randint

app = Flask(__name__)
os.environ['my_var'] = str(randint(0, 999))


@app.route("/")
def hello():
    my_var = os.environ['my_var']
    db_location = os.getenv('ENV_VAR_DB_LOCATION', "default value for ENV_VAR_DB_LOCATION")
    return "Env vars: my var -> " + my_var + ", db_location -> " + db_location


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=int("8080"), debug=True)
