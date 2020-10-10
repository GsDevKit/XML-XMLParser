tests
testElementContentModelOptional
	| dtd |

	dtd := '<!DOCTYPE root [',
		(self elementDeclarationsNamed: #('one' 'two' 'three' 'four' 'five')),
		'<!ELEMENT root (one?,two,three?,(four?, five)?)>]>'.

	#('<root><one/><two/><three/><four/><five/></root>'
		'<root><two/><three/></root>'
		'<root><one/><two/><three/><five/></root>'
		'<root><two/></root>'
		'<root><one/><two/></root>')
		do: [:each |
			self
				shouldnt: [SAXHandler parse: dtd, each]
				raise: XMLValidationException].

	#('<root><one/><three/><four/><five/></root>'
		'<root><one/><two/><three/><four/></root>'
		'<root><one/><two/><three/><five/><four/></root>')
		do: [:each |
			self
				should: [SAXHandler parse: dtd, each]
				raise: XMLValidationException].