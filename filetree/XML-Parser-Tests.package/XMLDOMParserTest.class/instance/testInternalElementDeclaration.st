tests
testInternalElementDeclaration
	| doctype elementDeclaration |

	doctype :=
		(XMLDOMParser
			parse: self internalSubsetXMLWithDeclarations
			usingNamespaces: true
			validation: true
			externalEntities: false) doctypeDeclaration.
	elementDeclaration := doctype nodes first.
	self
		assert: elementDeclaration element equals: 'root';
		assert: elementDeclaration contentModel equals: '(#PCDATA|one|two)*'.