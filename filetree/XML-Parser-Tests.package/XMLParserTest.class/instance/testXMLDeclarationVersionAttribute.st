tests
testXMLDeclarationVersionAttribute
	#(''
		'1'
		'1.'
		'1.0.'
		'1.0.1'
		'1..'
		'1..0'
		'1..0..'
		'1..0..1'
		'.1'
		'.1.'
		'.1.0'
		'.1.0.'
		'.1.0.1'
		' 1 '
		' 1. '
		' 1.0 '
		' 1.0. '
		' 1.0.1 '
		'10'
		'10.'
		'10.00'
		'10.00.'
		'10.00.10'
		'one'
		'one.'
		'one.zero'
		'one.zero.'
		'one.zero.one')
		do: [:each |
			self
				should: [SAXHandler parse: '<?xml version="', each, '"?><test/>']
				raise: XMLWellFormednessException].

	#('1.0'
		'1.1'
		'1.00'
		'1.10'
		'1.000'
		'1.100')
		do: [:each |
			self
				shouldnt: [SAXHandler parse: '<?xml version="', each, '"?><test/>']
				raise: XMLWellFormednessException].