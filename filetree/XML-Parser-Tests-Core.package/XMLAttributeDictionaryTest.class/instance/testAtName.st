tests
testAtName
	| dictionary |

	dictionary := self prefixedAttributeDictionary.
	self
		assert: (dictionary atName: 'id') equals: 'id';
		assert: (dictionary atName: 'xml:id') equals: 'id';
		assert: (dictionary atName: 'name') equals: 'value';
		assert: (dictionary atName: 'prefix:name') equals: 'prefixValue';
		assert: (dictionary atName: 'otherPrefix:name') equals: 'otherPrefixValue';
		assert: (dictionary atName: self absentKey) equals: ''.