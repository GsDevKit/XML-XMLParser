tests
testStartEntity
	| parser messages |
	(parser := SAXRecordingPrefixURILocalNameHandler
		on: self generalEntityXMLSource) parseDocument.
	self
		assert: (parser wasSentSelectors: self generalEntityXMLSourceSelectors).
	messages := parser allSentMessagesNamed: #startEntity:.
	self
		assert: messages first arguments equals: #('first');
		assert: messages second arguments equals: #('second')