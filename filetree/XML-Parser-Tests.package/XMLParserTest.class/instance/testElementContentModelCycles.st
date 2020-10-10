tests
testElementContentModelCycles
	| dtd |

	"this content model produces an NFA with cycles, to ensure
	they're handled correctly"
	dtd := '<!DOCTYPE root [',
		(self elementDeclarationsNamed: #('one' 'two' 'three')),
		'<!ELEMENT root (one*,two?)+>]>'.

	#('<root><one/><two/></root>'
		'<root><one/><two/><one/><two/></root>'
		'<root><one/><two/><two/><one/></root>'
		'<root><two/><one/><one/><two/></root>'
		'<root><one/></root>'
		'<root><two/></root>'
		'<root></root>')
		do: [:each |
			self
				shouldnt: [SAXHandler parse: dtd, each]
				raise: XMLValidationException].

	#('<root><one/><two/><three/></root>'
		'<root><one/><three/><two/></root>'
		'<root><three/></root>')
		do: [:each |
			self
				should: [SAXHandler parse: dtd, each]
				raise: XMLValidationException].