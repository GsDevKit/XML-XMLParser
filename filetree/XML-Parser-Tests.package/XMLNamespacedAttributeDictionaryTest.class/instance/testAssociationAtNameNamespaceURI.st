tests
testAssociationAtNameNamespaceURI
	| dictionary |

	dictionary := self prefixedAttributeDictionary.
	self assert:
		(dictionary
			associationAtName: 'id'
			namespaceURI: XMLNamespaceScope xmlNamespaceURI) equals: ('xml:id' -> 'id').
	self assert:
		(dictionary
			associationAtName: 'id'
			namespaceURI: 'defaultNS') isNil.
	self assert:
		(dictionary
			associationAtName: 'xml:id'
			namespaceURI: XMLNamespaceScope xmlNamespaceURI) equals: ('xml:id' -> 'id').
	self assert:
		(dictionary
			associationAtName: 'xml:id'
			namespaceURI: 'defaultNS') isNil.

	self assert:
		(dictionary
			associationAtName: 'name'
			namespaceURI: 'prefixNS') equals: ('prefix:name' -> 'prefixValue').
	self assert:
		(dictionary
			associationAtName: 'prefix:name'
			namespaceURI: 'prefixNS') equals: ('prefix:name' -> 'prefixValue').
	self assert:
		(dictionary
			associationAtName: 'prefix:name'
			namespaceURI: 'defaultNS') isNil.

	self assert:
		(dictionary
			associationAtName: 'name'
			namespaceURI: 'otherPrefixNS') equals: ('otherPrefix:name' -> 'otherPrefixValue').
	self assert:
		(dictionary
			associationAtName: 'otherPrefix:name'
			namespaceURI: 'otherPrefixNS') equals: ('otherPrefix:name' -> 'otherPrefixValue').
	self assert:
		(dictionary
			associationAtName: 'otherPrefix:name'
			namespaceURI: 'defaultNS') isNil.

	self assert:
		(dictionary
			associationAtName: 'name'
			namespaceURI: '') equals: ('name' -> 'value').
	self assert:
		(dictionary
			associationAtName: 'name'
			namespaceURI: 'defaultNS') isNil.