tests
testParsingStrictXHTMLDocument
	"This uses HTTP so is skipped by default"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testParsingStrictXHTMLDocument.

	self
		shouldnt: [
			(SAXHandler on: self strictXHTMLDocumentSource)
				resolvesExternalEntities: true;
				removeLimits;
				parseDocument]
		raise: XMLParserException.