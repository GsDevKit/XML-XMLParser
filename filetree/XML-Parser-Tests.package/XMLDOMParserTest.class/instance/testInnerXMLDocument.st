tests
testInnerXMLDocument
	| document |

	document := XMLDOMParser parse: self addressBookXMLWithDTD.
	self
		assert: ((document innerXML: '<new-root/>') root isNamed: 'new-root');
		assert: document innerXML equals: '<new-root/>';
		assert: (document root innerXML: 'test') contentString equals: 'test';
		assert: document root innerXML equals: 'test'.
	
	document := XMLDOMParser parse: self addressBookXMLWithDTD.
	self assert:
		(document innerXML: document innerXML) printString equals:
			(XMLDOMParser parse: self addressBookXMLWithDTD) printString.
	self
		should: [document innerXML: self addressBookXMLWithDTD]
		raise: XMLWellFormednessException.

	document := XMLDOMParser parse: '<root/>'.
	self
		should: [document innerXML: '<root1/><root2/>']
		raise: XMLWellFormednessException.