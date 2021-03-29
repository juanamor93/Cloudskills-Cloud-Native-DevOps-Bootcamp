import json


def hello(event, context):
    body = {
        "message": "Hello Cloudskills Bootcamp!",
        "input": event
    }

    response = {
        "statusCode": 200,
        "body": json.dumps(body)
    }

    return response

    