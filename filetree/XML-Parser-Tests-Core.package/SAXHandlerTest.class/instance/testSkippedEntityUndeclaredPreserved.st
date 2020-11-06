tests
testSkippedEntityUndeclaredPreserved
	| xml parser |
	xml := '<!DOCTYPE root SYSTEM "extern.dtd"><root>&undeclared;</root>'.
	(parser := SAXRecordingPrefixURILocalNameHandler on: xml)
		isValidating: false;
		preservesUndeclaredEntityReferences: true;
		parseDocument.
	self
		assert:
			(parser
				wasSentSelectors:
					#(startDocument #startDTD:publicID:systemID: endDTD #startElement:prefix:uri:localName:attributes: skippedEntity: characters: #endElement:prefix:uri:localName: endDocument)).
	self
		assert: (parser argumentsSentWith: #skippedEntity:)
			equals: #('undeclared');
		assert: (parser argumentsSentWith: #characters:)
			equals: #('&undeclared;')