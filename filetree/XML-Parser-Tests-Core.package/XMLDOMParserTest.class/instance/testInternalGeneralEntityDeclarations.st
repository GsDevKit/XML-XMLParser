tests
testInternalGeneralEntityDeclarations
	| doctype firstEntity secondEntity |

	doctype :=
		(XMLDOMParser
			parse: self internalSubsetXMLWithDeclarations
			usingNamespaces: true
			validation: true
			externalEntities: false) doctypeDeclaration.

	firstEntity := doctype nodes fourth.
	self
		deny: firstEntity isParameter;
		assert: firstEntity name equals: 'general';
		assert: firstEntity replacement equals: 'replacement';
		assert: firstEntity publicID equals: '';
		assert: firstEntity systemID equals: '';
		assert: firstEntity ndata equals: ''.

	secondEntity := doctype nodes fifth.
	self
		deny: secondEntity isParameter;
		assert: secondEntity name equals: 'externalGeneral';
		assert: secondEntity replacement equals: '';
		assert: secondEntity publicID equals: 'pubid2';
		assert: secondEntity systemID equals: 'external1.dtd';
		assert: secondEntity ndata equals: ''.