tests
testDocumentURI
	| xml uri newURI parser |
	xml := self prefixedXMLSource.
	uri := 'test/test.xml'.
	newURI := 'new/new.xml'.
	parser := SAXHandler on: xml documentURI: uri.
	self
		assert: parser documentURI equals: uri;
		assert: (parser documentURI: newURI) == parser;
		assert: parser documentURI equals: newURI.

	"reusing on: should clear it"
	self assert: (SAXHandler on: xml) documentURI equals: ''