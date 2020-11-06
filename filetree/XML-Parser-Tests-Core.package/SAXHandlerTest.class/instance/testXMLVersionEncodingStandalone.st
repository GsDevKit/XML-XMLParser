tests
testXMLVersionEncodingStandalone
	| selectors |
	selectors := #(startDocument #xmlVersion:encoding:standalone: #startElement:prefix:uri:localName:attributes: #endElement:prefix:uri:localName: endDocument).
	#('<?xml version="1.0" encoding="UTF-8"?><test/>' '<?xml version="1.00" encoding="UTF-8"?><test/>' '<?xml version="1.000" encoding="UTF-8"?><test/>' '<?xml version="1.1" encoding="UTF-8"?><test/>' '<?xml version="1.10" encoding="UTF-8"?><test/>' '<?xml version="1.100" encoding="UTF-8"?><test/>' '<?xml version="1.0" encoding="UTF-16"?><test/>' '<?xml version="1.0" encoding="Latin-1"?><test/>' '<?xml version="1.0" encoding="UTF-8" standalone="no"?><test/>' '<?xml version="1.0" encoding="UTF-8" standalone="yes"?><test/>')
		with:
			#(#(1.0 'UTF-8' false) #(1.0 'UTF-8' false) #(1.0 'UTF-8' false) #(1.1 'UTF-8' false) #(1.1 'UTF-8' false) #(1.1 'UTF-8' false) #(1.0 'UTF-16' false) #(1.0 'Latin-1' false) #(1.0 'UTF-8' false) #(1.0 'UTF-8' true))
		do: [ :source :arguments | 
			| parser |
			(parser := SAXRecordingPrefixURILocalNameHandler on: source)
				parseDocument.
			self
				assert: (parser wasSentSelectors: selectors);
				assert: (parser argumentsSentWith: #xmlVersion:encoding:standalone:)
					equals: arguments ]