tests
testCharset
	self assert:
		(XMLHTTPMIMEType
			mainType: 'text'
			subType: 'plain') charset equals: XMLHTTPMIMEType defaultCharset.
	self assert:
		(XMLHTTPMIMEType
			mainType: 'text'
			subType: 'plain'
			parameters:
				(OrderedCollection with: 'charset' -> 'utf8')) charset equals: 'utf8'.
	self assert:
		(XMLHTTPMIMEType
			mainType: 'text'
			subType: 'plain'
			parameters:
				(OrderedCollection
					with: 'charset' -> 'utf16'
					with: 'charset' -> 'utf8')) charset equals: 'utf16'.