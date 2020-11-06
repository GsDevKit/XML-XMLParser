tests
testEquals
	self
		assertMIMEType:
			(XMLHTTPMIMEType
				mainType: 'text'
				subType: 'plain')
		doesNotEqual:
			(XMLHTTPMIMEType
				mainType: 'text'
				subType: 'html').
	self
		assertMIMEType:
			(XMLHTTPMIMEType
				mainType: 'text'
				subType: 'xml')
		doesNotEqual:
			(XMLHTTPMIMEType
				mainType: 'application'
				subType: 'xml').
	self
		assertMIMEType:
			(XMLHTTPMIMEType
				mainType: 'text'
				subType: 'plain')
		equals:
			(XMLHTTPMIMEType
				mainType: 'Text'
				subType: 'PLAIN').

	self
		assertMIMEType:
			(XMLHTTPMIMEType
				mainType: 'text'
				subType: 'plain'
				parameters: (OrderedCollection with: 'charset' -> 'utf-8'))
		doesNotEqual:
			(XMLHTTPMIMEType
				mainType: 'text'
				subType: 'plain'
				parameters: (OrderedCollection with: 'charset' -> 'utf-16')).
	self
		assertMIMEType:
			(XMLHTTPMIMEType
				mainType: 'text'
				subType: 'plain'
				parameters:
					(OrderedCollection
						with: 'charset' -> 'utf-8'
						with: 'name' -> 'value'))
		doesNotEqual:
			(XMLHTTPMIMEType
				mainType: 'text'
				subType: 'plain'
				parameters:
					(OrderedCollection
						with: 'name' -> 'value'
						with: 'charset' -> 'utf-16')).
	self
		assertMIMEType:
			(XMLHTTPMIMEType
				mainType: 'text'
				subType: 'plain'
				parameters:
					(OrderedCollection
						with: 'charset' -> 'utf-8'
						with: 'name' -> 'value'))
		equals:
			(XMLHTTPMIMEType
				mainType: 'Text'
				subType: 'PLAIN'
				parameters:
					(OrderedCollection
						with: 'Name' -> 'value'
						with: 'CHARSET' -> 'utf-8')).
	self
		assertMIMEType:
			(XMLHTTPMIMEType
				mainType: 'text'
				subType: 'plain'
				parameters:
					(OrderedCollection
						with: 'charset' -> 'utf-8'
						with: 'charset' -> 'utf-8'
						with: 'name' -> 'value'))
		equals:
			(XMLHTTPMIMEType
				mainType: 'Text'
				subType: 'PLAIN'
				parameters:
					(OrderedCollection
						with: 'Charset' -> 'utf-8'
						with: 'NAME' -> 'value'
						with: 'charset' -> 'utf-8')).