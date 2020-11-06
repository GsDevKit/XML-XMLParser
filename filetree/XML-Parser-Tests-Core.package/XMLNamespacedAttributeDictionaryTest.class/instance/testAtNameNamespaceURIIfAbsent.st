tests
testAtNameNamespaceURIIfAbsent
	| dictionary |

	dictionary := self prefixedAttributeDictionary.
	self assert:
		(dictionary
			atName: 'id'
			namespaceURI: XMLNamespaceScope xmlNamespaceURI
			ifAbsent: [self fail]) equals: 'id'.
	self assert:
		(dictionary
			atName: 'id'
			namespaceURI: 'defaultNS'
			ifAbsent: ['absent']) equals: 'absent'.
	self assert:
		(dictionary
			atName: 'xml:id'
			namespaceURI: XMLNamespaceScope xmlNamespaceURI
			ifAbsent: [self fail]) equals: 'id'.
	self assert:
		(dictionary
			atName: 'xml:id'
			namespaceURI: 'defaultNS'
			ifAbsent: ['absent']) equals: 'absent'.

	self assert:
		(dictionary
			atName: 'name'
			namespaceURI: 'prefixNS'
			ifAbsent: [self fail]) equals: 'prefixValue'.
	self assert:
		(dictionary
			atName: 'prefix:name'
			namespaceURI: 'prefixNS'
			ifAbsent: [self fail]) equals: 'prefixValue'.
	self assert:
		(dictionary
			atName: 'prefix:name'
			namespaceURI: 'defaultNS'
			ifAbsent: ['absent']) equals: 'absent'.

	self assert:
		(dictionary
			atName: 'name'
			namespaceURI: 'otherPrefixNS'
			ifAbsent: [self fail]) equals: 'otherPrefixValue'.
	self assert:
		(dictionary
			atName: 'otherPrefix:name'
			namespaceURI: 'otherPrefixNS'
			ifAbsent: [self fail]) equals: 'otherPrefixValue'.
	self assert:
		(dictionary
			atName: 'otherPrefix:name'
			namespaceURI: 'defaultNS'
			ifAbsent: ['absent']) equals: 'absent'.

	self assert:
		(dictionary
			atName: 'name'
			namespaceURI: ''
			ifAbsent: [self fail]) equals: 'value'.
	self assert:
		(dictionary
			atName: 'name'
			namespaceURI: 'defaultNS'
			ifAbsent: ['absent']) equals: 'absent'.