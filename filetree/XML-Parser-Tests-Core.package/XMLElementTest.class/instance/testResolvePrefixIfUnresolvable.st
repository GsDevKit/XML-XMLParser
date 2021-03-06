tests
testResolvePrefixIfUnresolvable
	| element |

	element := self newNode.
	self namespaces keysAndValuesDo: [:prefix :uri |
		self assert:
			(element
				resolvePrefix: prefix
				ifUnresolvable: ['unresolvable']) = 'unresolvable'.
		element declarePrefix: prefix uri: uri.
		self assert:
			(element
				resolvePrefix: prefix
				ifUnresolvable: [self fail]) = uri].

	self assert:
		(element
			resolvePrefix: 'xml'
			ifUnresolvable: [self fail]) = XMLNamespaceScope xmlNamespaceURI.
	self  assert:
		(element
			resolvePrefix: 'xmlns'
			ifUnresolvable: [self fail]) = XMLNamespaceScope xmlnsNamespaceURI.

	(element := self newNode) usesNamespaces: false.
	self assert:
		(element
			resolvePrefix: 'xml'
			ifUnresolvable: ['unresolvable']) = 'unresolvable'.
	self  assert:
		(element
			resolvePrefix: 'xmlns'
			ifUnresolvable: ['unresolvable']) = 'unresolvable'.
	self deny: element usesNamespaces.