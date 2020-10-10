tests
testAssociationAtName
	| dictionary |
	dictionary := self prefixedAttributeDictionary.
	self
		assert: (dictionary associationAtName: 'id')
		equals: 'xml:id' -> 'id'.
	self
		assert: (dictionary associationAtName: 'xml:id')
		equals: 'xml:id' -> 'id'.
	self
		assert: (dictionary associationAtName: 'name')
		equals: 'name' -> 'value'.
	self
		assert: (dictionary associationAtName: 'prefix:name')
		equals: 'prefix:name' -> 'prefixValue'.
	self
		assert: (dictionary associationAtName: 'otherPrefix:name')
		equals: 'otherPrefix:name' -> 'otherPrefixValue'.
	self assert: (dictionary associationAtName: self absentKey) isNil