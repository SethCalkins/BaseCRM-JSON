import httplib

# Request: Search - Trial Account (https://sync.futuresimple.com/api/v1/search.xml?term=ti)

connection = httplib.HTTPSConnection('sync.futuresimple.com', 443, timeout = 30)

# Headers

headers = {"X-Basecrm-Device-UUID":"bfd2dccb-08a3-4436-89a0-13d750e75972",
           "X-PLATFORM-VERSION":"8.1",
           "X-CLIENT-VERSION":"2.19",
           "X-DEVICE-ID":"iPhone7,1",
           "User-Agent":"Base/806 CFNetwork/711.1.12 Darwin/14.0.0",
           "Content-Type":"application/json",
           "Accept":"*/*",
           "Host":"sync.futuresimple.com",
           "Connection":"keep-alive",
           "X-Pipejump-Auth":"<APIKEY>",
           "X-DEVICE-UNIQUE-ID":"62CD1218-211A-444E-9696-FFF99F7CDFFF",
           "Accept-Encoding":"gzip, deflate",
           "X-Futuresimple-Token":"<APIKEY>",
           "Accept-Language":"en-US",
           "X-Futuresimple-Api-Token":"<APIKEY>",
           "X-CLIENT-TYPE":"ios-iphone"}

# Send synchronously

connection.request('GET', '/api/v1/search.xml?term=ti', None, headers)
try:
	response = connection.getresponse()
	content = response.read()
	# Success
	print('Response status ' + str(response.status))
except httplib.HTTPException, e:
	# Exception
	print('Exception during request')
