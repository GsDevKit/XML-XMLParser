tests
testAtNameNamespaceURI
	| dictionary |

	dictionary := self prefixedAttributeDictionary.
	self assert:
		(dictionary
			atName: 'id'
			namespaceURI: XMLNamespaceScope xmlNamespaceURI) equals: 'id'.
	self assert:
		(dictionary
			atName: 'id'
			namespaceURI: 'defaultNS') equals: ''.
	self assert:
		(dictionary
			atName: 'xml:id'
			namespaceURI: XMLNamespaceScope xmlNamespaceURI) equals: 'id'.
	self assert:
		(dictionary
			atName: 'xml:id'
			namespaceURI: 'defaultNS') equals: ''.

	self assert:
		(dictionary
			atName: 'name'
			namespaceURI: 'prefixNS') equals: 'prefixValue'.
	self assert:
		(dictionary
			atName: 'prefix:name'
			namespaceURI: 'prefixNS') = 'prefixValue'.
	self assert:
		(dictionary
			atName: 'prefix:name'
			namespaceURI: 'defaultNS') equals: ''.

	self assert:
		(dictionary
			atName: 'name'
			namespaceURI: 'otherPrefixNS') equals: 'otherPrefixValue'.
	self assert:
		(dictionary
			atName: 'otherPrefix:name'
			namespaceURI: 'otherPrefixNS') equals: 'otherPrefixValue'.
	self assert:
		(dictionary
			atName: 'otherPrefix:name'
			namespaceURI: 'defaultNS') equals: ''.

	self assert:
		(dictionary
			atName: 'name'
			namespaceURI: '') equals: 'value'.
	self assert:
		(dictionary
			atName: 'name'
			namespaceURI: 'defaultNS') equals: ''.