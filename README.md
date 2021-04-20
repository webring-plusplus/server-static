```
# Produce a list of links
$ echo 'blakehawkins.com
richardlupton.com' > links.list

# Generate webring++ file
$ ./generate.sh

# Test in a local server
$ ./test.sh &
$ curl localhost:8000/webring++.json
{
  "version": 1,
  "links": [
    "blakehawkins.com",
    "richardlupton.com"
  ]
}
```
