import json
from core.GetTime.time import TimeUtil

def lambda_handler(event, context):
    time_util = TimeUtil()

    current_time = time_util.get_time()
    response_message = {"Greetings": "Hello Visitor!!! You visited us at {0}".format(current_time)}
    response = {
    	"statusCode": 200,
    	"isBase64Encoded": False,
    	"headers": {},
    	"body": json.dumps(response_message)
    }
    return response