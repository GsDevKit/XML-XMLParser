tests
testIsXMLNSAttributeName
	self
		deny: '' isXMLNSAttributeName;
		deny: 'name' isXMLNSAttributeName;
		deny: 'name:xml' isXMLNSAttributeName;
		deny: 'name:xmlns' isXMLNSAttributeName;
		deny: 'xml:base' isXMLNSAttributeName;
		deny: 'xml:space' isXMLNSAttributeName;
		assert: 'xmlns' isXMLNSAttributeName;
		assert: 'xmlns:' isXMLNSAttributeName;
		assert: 'xmlns:name' isXMLNSAttributeName