import boto3, json, csv

ec2 = boto3.client('ec2')
response = ec2.describe_instances()
# print response
# print type(response)
with open('response.csv', 'wb') as f:
    w = csv.DictWriter(f, response.keys())
    w.writeheader()
    w.writerow(response)
# response_parsed = json.loads(response)
#print(json.dump(response, indent=4, sort_keys=True))
# print(type(response))
# print(response)
