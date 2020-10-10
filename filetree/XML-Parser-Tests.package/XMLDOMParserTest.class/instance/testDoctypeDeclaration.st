tests
testDoctypeDeclaration
	| doctype |

	doctype :=
		(XMLDOMParser
			parse: self internalSubsetXMLWithDeclarations
			usingNamespaces: true
			validation: true
			externalEntities: false) doctypeDeclaration.
	self
		assert: doctype root equals: 'root';
		assert: doctype publicID equals: 'pubid';
		assert: doctype systemID equals: 'external.dtd';
		assert: doctype nodes notEmpty;
		assert: (doctype nodes allSatisfy: [:each | each isDeclaration]).