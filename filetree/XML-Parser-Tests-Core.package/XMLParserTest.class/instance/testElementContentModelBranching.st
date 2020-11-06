tests
testElementContentModelBranching
	| dtd |

	dtd := '<!DOCTYPE root [',
		(self elementDeclarationsNamed: #('one' 'two' 'three' 'four' 'five')),
		'<!ELEMENT root ((one|two),(three|four|five))>]>'.

	#('<root><one/><three/></root>'
		'<root><one/><four/></root>'
		'<root><one/><five/></root>'
		'<root><two/><three/></root>'
		'<root><two/><four/></root>'
		'<root><two/><five/></root>')
		do: [:each |
			self
				shouldnt: [SAXHandler parse: dtd, each]
				raise: XMLValidationException].

	#('<root><one/><two/><three/></root>'
		'<root><one/><three/><four/><five/></root>'
		'<root><one/></root>'
		'<root><four/></root>')
		do: [:each |
			self
				should: [SAXHandler parse: dtd, each]
				raise: XMLValidationException].