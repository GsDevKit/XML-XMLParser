tests
testInternalNotationDeclarations
	| doctype notation |

	doctype :=
		(XMLDOMParser
			parse: self internalSubsetXMLWithDeclarations
			usingNamespaces: true
			validation: true
			externalEntities: false) doctypeDeclaration.

	notation := doctype nodes eighth.
	self
		assert: notation name equals: 'notation';
		assert: notation publicID equals: '';
		assert: notation systemID equals: 'note.doc'.