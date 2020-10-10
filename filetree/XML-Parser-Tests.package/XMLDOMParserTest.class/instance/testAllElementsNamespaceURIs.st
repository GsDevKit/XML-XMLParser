tests
testAllElementsNamespaceURIs
	| document people |

	document := XMLDOMParser parse: self addressBookNamespacedXML.

	people :=
		document
			allElementsNamed: 'person'
			namespaceURI: 'defaultNS'.
	self
		assert: people size equals: 4;
		assert:
			(document
				allElementsNamed: 'person'
				namespaceURI: 'undeclaredNS') isEmpty.