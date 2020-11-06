tests
testStartElementPrefixURIAttributes
	| parser arguments |
	(parser := SAXRecordingPrefixURIHandler on: self prefixedXMLSource)
		parseDocument.
	self
		assert: (parser wasSentSelectors: self prefixedXMLSourcePrefixURISelectors).
	arguments := parser
		argumentsSentWith: #startElement:prefix:uri:attributes:.
	self
		assert: arguments size equals: 4;
		assert: arguments first equals: 'prefix:test';
		assert: arguments second equals: 'prefix';
		assert: arguments third equals: 'prefixNS';
		assert: arguments fourth equals: self prefixedXMLAttributes.
	(parser := SAXRecordingPrefixURIHandler on: self prefixedXMLSource)
		usesNamespaces: false;
		parseDocument.
	self
		assert:
			(parser
				wasSentSelectors: self prefixedXMLSourcePrefixURISelectorsNamespacesDisabled).
	arguments := parser
		argumentsSentWith: #startElement:prefix:uri:attributes:.
	self
		assert: arguments size equals: 4;
		assert: arguments first equals: 'prefix:test';
		assert: arguments second equals: 'prefix';
		assert: arguments third equals: '';
		assert: arguments fourth
			equals: self prefixedXMLAttributesNamespacesDisabled