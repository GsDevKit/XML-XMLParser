tests
testNamespacesResolvingDisabled
	| document |

	document :=
		XMLDOMParser
			parse: self addressBookNamespacedXML
			usingNamespaces: false.
	document allElementsDo: [:each |
		self
			assert: each defaultNamespace equals: '';
			assert: (each resolvePrefix: '') equals: '';
			assert: (each resolvePrefix: 'book') equals: '';
			assert: (each resolvePrefix: 'ps') equals: '';
			assert:
				each namespaceURI equals:
					(each hasPrefix
						ifTrue: [each resolvePrefix: each prefix]
						ifFalse: [each defaultNamespace])]