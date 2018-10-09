from flask import Flask
import os
from random import randint

app = Flask(__name__)
os.environ['my_var'] = str(randint(0, 999))

@app.route("/")
def hello():
    my_var = os.environ['my_var']
    return "Hello World! " + my_var

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=int("8080"), debug=True)



    # NEXT STEP
    # placement:
    # https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-placementconstraints-placementconstraint.html
    # https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html
