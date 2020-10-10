tests
testAtNameIfAbsent
	| dictionary |

	dictionary := self prefixedAttributeDictionary.
	self assert:
		(dictionary
			atName: 'id'
			ifAbsent: [self fail]) equals: 'id'.
	self assert:
		(dictionary
			atName: 'xml:id'
			ifAbsent: [self fail]) equals: 'id'.
	self assert:
		(dictionary
			atName: 'name'
			ifAbsent: [self fail]) equals: 'value'.
	self assert:
		(dictionary
			atName: 'prefix:name'
			ifAbsent: [self fail]) equals: 'prefixValue'.
	self assert:
		(dictionary
			atName: 'otherPrefix:name'
			ifAbsent: [self fail]) equals: 'otherPrefixValue'.
	self assert:
		(dictionary
			atName: self absentKey
			ifAbsent: [self absentValue]) equals: self absentValue.