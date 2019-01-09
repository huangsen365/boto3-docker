import json

your_json = '["foo", {"bar":["baz", null, 1.0, 2]}]'
parsed = json.loads(your_json)
print(type(your_json))
print(type(parsed))
#print(json.dumps(parsed, indent=4, sort_keys=True))