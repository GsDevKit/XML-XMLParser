tests
testNamespacesResolving
	| document |

	document := XMLDOMParser parse: self addressBookNamespacedXML.
	document allElementsDo: [:each |
		self
			assert: each defaultNamespace equals: 'defaultNS';
			assert: (each resolvePrefix: '') equals: 'defaultNS';
			assert: (each resolvePrefix: 'book') equals: 'bookNS';
			assert: (each resolvePrefix: 'ps') equals: 'personNS';
			assert:
				each namespaceURI equals:
					(each hasPrefix
						ifTrue: [each resolvePrefix: each prefix]
						ifFalse: [each defaultNamespace])]