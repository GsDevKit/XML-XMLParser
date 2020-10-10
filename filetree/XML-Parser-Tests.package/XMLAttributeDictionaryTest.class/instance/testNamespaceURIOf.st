tests
testNamespaceURIOf
	| dictionary |

	dictionary := self prefixedAttributeDictionary.
	self
		assert: (dictionary namespaceURIOf: 'xml:id') equals: '';
		assert: (dictionary namespaceURIOf: 'prefix:name') equals: '';
		assert: (dictionary namespaceURIOf: 'otherPrefix:name') equals: '';
		assert: (dictionary namespaceURIOf: 'name') equals: ''.