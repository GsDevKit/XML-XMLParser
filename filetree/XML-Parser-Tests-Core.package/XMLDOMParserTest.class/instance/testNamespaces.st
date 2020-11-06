tests
testNamespaces
	| document  |

	document := XMLDOMParser parse: self addressBookNamespacePrefixedXML.
	document allElementsDo: [:each |
		(each == document root or: [each isNamed: 'person'])
			ifTrue: [
				self assert: each hasPrefix.
				each == document root
					ifTrue: [
						self
							assert: each prefix equals: 'book';
							assert: each namespaceURI equals: 'bookNS']
					ifFalse: [
						self
							assert: each prefix equals: 'ps';
							assert: each namespaceURI equals: 'personNS']]
			ifFalse: [
				self
					assert: each namespaceURI equals: 'defaultNS';
					deny: each hasPrefix;
					assert: each prefix equals: '']].