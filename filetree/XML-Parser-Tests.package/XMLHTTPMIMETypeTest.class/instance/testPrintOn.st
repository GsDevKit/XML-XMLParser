tests
testPrintOn
	self assert:
		(XMLHTTPMIMEType
			mainType: 'text'
			subType: 'plain') printString equals: 'text/plain'.
	self assert:
		(XMLHTTPMIMEType
			mainType: 'text'
			subType: 'plain'
			parameters:
				(OrderedCollection with: 'charset' -> 'utf8')) printString equals:
					'text/plain; charset=utf8'.
	self assert:
		(XMLHTTPMIMEType
			mainType: 'text'
			subType: 'plain'
			parameters:
				(OrderedCollection
					with: 'charset' -> 'utf8'
					with: 'name' -> 'value')) printString equals:
						'text/plain; charset=utf8; name=value'.