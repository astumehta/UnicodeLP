import http.client

conn = http.client.HTTPSConnection("worldwide-hotels.p.rapidapi.com")

payload = "location_id=10301220&language=en_US&currency=USD"

headers = {
    'content-type': "application/x-www-form-urlencoded",
    'X-RapidAPI-Key': "4ab8efea36msh245d3ad941ffe9fp1cc4cajsnf810ce5018e2",
    'X-RapidAPI-Host': "worldwide-hotels.p.rapidapi.com"
}

conn.request("POST", "/detail", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))