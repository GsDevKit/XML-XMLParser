tests
testAssociationAtNameNamespaceURIIfAbsent
	| dictionary |

	dictionary := self prefixedAttributeDictionary.
	self assert:
		(dictionary
			associationAtName: 'id'
			namespaceURI: XMLNamespaceScope xmlNamespaceURI
			ifAbsent: [self fail]) equals: ('xml:id' -> 'id').
	self assert:
		(dictionary
			associationAtName: 'id'
			namespaceURI: 'defaultNS'
			ifAbsent: [#absent]) equals: #absent.
	self assert:
		(dictionary
			associationAtName: 'xml:id'
			namespaceURI: XMLNamespaceScope xmlNamespaceURI
			ifAbsent: [self fail]) equals: ('xml:id' -> 'id').
	self assert:
		(dictionary
			associationAtName: 'xml:id'
			namespaceURI: 'defaultNS'
			ifAbsent: [#absent]) equals: #absent.

	self assert:
		(dictionary
			associationAtName: 'name'
			namespaceURI: 'prefixNS'
			ifAbsent: [self fail]) equals: ('prefix:name' -> 'prefixValue').
	self assert:
		(dictionary
			associationAtName: 'prefix:name'
			namespaceURI: 'prefixNS'
			ifAbsent: [self fail]) equals: ('prefix:name' -> 'prefixValue').
	self assert:
		(dictionary
			associationAtName: 'prefix:name'
			namespaceURI: 'defaultNS'
			ifAbsent: [#absent]) equals: #absent.

	self assert:
		(dictionary
			associationAtName: 'name'
			namespaceURI: 'otherPrefixNS'
			ifAbsent: [self fail]) equals: ('otherPrefix:name' -> 'otherPrefixValue').
	self assert:
		(dictionary
			associationAtName: 'otherPrefix:name'
			namespaceURI: 'otherPrefixNS'
			ifAbsent: [self fail]) equals: ('otherPrefix:name' -> 'otherPrefixValue').
	self assert:
		(dictionary
			associationAtName: 'otherPrefix:name'
			namespaceURI: 'defaultNS'
			ifAbsent: [#absent]) equals: #absent.

	self assert:
		(dictionary
			associationAtName: 'name'
			namespaceURI: ''
			ifAbsent: [self fail]) equals: ('name' -> 'value').
	self assert:
		(dictionary
			associationAtName: 'name'
			namespaceURI: 'defaultNS'
			ifAbsent: [#absent]) equals: #absent.