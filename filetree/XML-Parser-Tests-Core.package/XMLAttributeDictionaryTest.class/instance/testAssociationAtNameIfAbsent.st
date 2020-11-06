tests
testAssociationAtNameIfAbsent
	| dictionary |
	dictionary := self prefixedAttributeDictionary.
	self
		assert: (dictionary associationAtName: 'id' ifAbsent: [ self fail ])
		equals: 'xml:id' -> 'id'.
	self
		assert: (dictionary associationAtName: 'xml:id' ifAbsent: [ self fail ])
		equals: 'xml:id' -> 'id'.
	self
		assert: (dictionary associationAtName: 'name' ifAbsent: [ self fail ])
		equals: 'name' -> 'value'.
	self
		assert: (dictionary associationAtName: 'prefix:name' ifAbsent: [ self fail ])
		equals: 'prefix:name' -> 'prefixValue'.
	self
		assert:
			(dictionary
				associationAtName: 'otherPrefix:name'
				ifAbsent: [ self fail ])
		equals: 'otherPrefix:name' -> 'otherPrefixValue'.
	self
		assert:
			(dictionary
				associationAtName: self absentKey
				ifAbsent: [ self absentValue ])
		equals: self absentValue