tests
testStartElementPrefixURILocalNameAttributes
	| parser arguments |
	(parser := SAXRecordingPrefixURILocalNameHandler
		on: self prefixedXMLSource) parseDocument.
	self
		assert:
			(parser
				wasSentSelectors: self prefixedXMLSourcePrefixURILocalNameSelectors).
	arguments := parser
		argumentsSentWith: #startElement:prefix:uri:localName:attributes:.
	self
		assert: arguments size equals: 5;
		assert: arguments first equals: 'prefix:test';
		assert: arguments second equals: 'prefix';
		assert: arguments third equals: 'prefixNS';
		assert: arguments fourth equals: 'test';
		assert: arguments fifth equals: self prefixedXMLAttributes.
	(parser := SAXRecordingPrefixURILocalNameHandler
		on: self prefixedXMLSource)
		usesNamespaces: false;
		parseDocument.
	self
		assert:
			(parser
				wasSentSelectors: self prefixedXMLSourcePrefixURILocalNameSelectorsNamespacesDisabled).
	arguments := parser
		argumentsSentWith: #startElement:prefix:uri:localName:attributes:.
	self
		assert: arguments size equals: 5;
		assert: arguments first equals: 'prefix:test';
		assert: arguments second equals: 'prefix';
		assert: arguments third equals: '';
		assert: arguments fourth equals: 'test';
		assert: arguments fifth
			equals: self prefixedXMLAttributesNamespacesDisabled