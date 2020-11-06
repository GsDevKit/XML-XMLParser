tests
testEndPrefixMapping
	| parser messages |
	(parser := SAXRecordingPrefixURILocalNameHandler
		on: self prefixedXMLSource) parseDocument.
	self
		assert:
			(parser
				wasSentSelectors: self prefixedXMLSourcePrefixURILocalNameSelectors).
	messages := parser allSentMessagesNamed: #endPrefixMapping:.
	self
		assert: messages size equals: 2;
		assert: messages first arguments equals: #('prefix');
		assert: messages second arguments equals: #('').
	(parser := SAXRecordingPrefixURILocalNameHandler
		on: '<one xmlns="defaultNS"><two xmlns="defaultNS"/></one>')
		parseDocument.
	messages := parser allSentMessagesNamed: #endPrefixMapping:.
	self
		assert: messages size equals: 1;
		assert: messages first arguments equals: #('').
	(parser := SAXRecordingPrefixURILocalNameHandler
		on: '<one xmlns="defaultNS"><two xmlns="newDefaultNS"/></one>')
		parseDocument.
	messages := parser allSentMessagesNamed: #endPrefixMapping:.
	self
		assert: messages size equals: 2;
		assert: messages first arguments equals: #('');
		assert: messages second arguments equals: #('').
	(parser := SAXRecordingPrefixURILocalNameHandler
		on: '<one xmlns:xml="' , XMLNamespaceScope xmlNamespaceURI , '"/>')
		parseDocument.
	self
		assert: (parser allSentMessagesNamed: #endPrefixMapping:) isEmpty