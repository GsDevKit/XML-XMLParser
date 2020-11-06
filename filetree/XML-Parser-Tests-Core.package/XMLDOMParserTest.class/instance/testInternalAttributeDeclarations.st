tests
testInternalAttributeDeclarations
	| doctype firstAttribute secondAttribute |

	doctype :=
		(XMLDOMParser
			parse: self internalSubsetXMLWithDeclarations
			usingNamespaces: true
			validation: true
			externalEntities: false) doctypeDeclaration.

	firstAttribute := doctype nodes second.
	self
		assert: firstAttribute element equals: 'root';
		assert: firstAttribute attribute equals: 'name';
		assert: firstAttribute type equals: 'CDATA';
		assert: firstAttribute defaultPragma equals: 'IMPLIED';
		assert: firstAttribute defaultValue equals: ''.

	secondAttribute := doctype nodes third.
	self
		assert: secondAttribute element equals: 'root';
		assert: secondAttribute attribute equals: 'number';
		assert: secondAttribute type equals: '(one|two|three)';
		assert: secondAttribute defaultPragma equals: '';
		assert: secondAttribute defaultValue equals: 'three'.