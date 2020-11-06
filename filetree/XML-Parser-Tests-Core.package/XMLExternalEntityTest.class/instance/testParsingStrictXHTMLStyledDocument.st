tests
testParsingStrictXHTMLStyledDocument
	"This uses HTTP so is skipped by default"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testParsingStrictXHTMLStyledDocument.

	self
		shouldnt: [
			(SAXHandler on: self strictXHTMLStyledDocumentSource)
				resolvesExternalEntities: true;
				removeLimits;
				parseDocument]
		raise: XMLParserException.