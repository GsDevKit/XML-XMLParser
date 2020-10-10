tests
testInternalParameterEntityDeclarations
	| doctype firstEntity secondEntity |

	doctype :=
		(XMLDOMParser
			parse: self internalSubsetXMLWithDeclarations
			usingNamespaces: true
			validation: true
			externalEntities: false) doctypeDeclaration.

	firstEntity := doctype nodes sixth.
	self
		assert: firstEntity isParameter;
		assert: firstEntity name equals: 'parameter';
		assert: firstEntity replacement equals: 'replacement';
		assert: firstEntity publicID equals: '';
		assert: firstEntity systemID equals: ''.

	secondEntity := doctype nodes seventh.
	self
		assert: secondEntity isParameter;
		assert: secondEntity name equals: 'externalParameter';
		assert: secondEntity replacement equals: '';
		assert: secondEntity publicID equals: '';
		assert: secondEntity systemID equals: 'external2.dtd'.