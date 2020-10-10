tests
testHash
	self assert:
		(XMLHTTPMIMEType
			mainType: 'text'
			subType: 'plain') hash equals:
			(XMLHTTPMIMEType
				mainType: 'Text'
				subType: 'PLAIN') hash.

	self assert:
		(XMLHTTPMIMEType
			mainType: 'text'
			subType: 'plain'
			parameters:
				(OrderedCollection
					with: 'charset' -> 'utf-8'
					with: 'name' -> 'value')) hash equals:
			(XMLHTTPMIMEType
				mainType: 'Text'
				subType: 'PLAIN'
				parameters:
					(OrderedCollection
						with: 'Name' -> 'value'
						with: 'CHARSET' -> 'utf-8')) hash.

	self assert:
		(XMLHTTPMIMEType
			mainType: 'text'
			subType: 'plain'
			parameters:
				(OrderedCollection
					with: 'charset' -> 'utf-8'
					with: 'charset' -> 'utf-8'
					with: 'name' -> 'value')) hash equals:
			(XMLHTTPMIMEType
				mainType: 'Text'
				subType: 'PLAIN'
				parameters:
					(OrderedCollection
						with: 'Charset' -> 'utf-8'
						with: 'NAME' -> 'value'
						with: 'charset' -> 'utf-8')) hash.