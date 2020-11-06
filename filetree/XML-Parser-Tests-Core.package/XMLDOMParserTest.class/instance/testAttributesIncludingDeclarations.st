tests
testAttributesIncludingDeclarations
	| document  root |

	document :=
		XMLDOMParser
			parse: self addressBookNamespacedXML
			usingNamespaces: false.
	root := document root.
	self
		assert: root hasAttributes;
		assert: (root attributeAt: 'xmlns') equals: 'defaultNS';
		assert: (root attributeAt: 'xmlns:book') equals: 'bookNS';
		assert: (root attributeAt: 'xmlns:ps') equals: 'personNS'.