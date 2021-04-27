import os

def lambda_handler(event, context):
    print("S3 File Uploaded!")
    return "{} from Lambda!".format(os.environ['greeting'])
