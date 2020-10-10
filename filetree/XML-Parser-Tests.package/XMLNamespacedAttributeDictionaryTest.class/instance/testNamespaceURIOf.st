tests
testNamespaceURIOf
	| dictionary |

	dictionary := self prefixedAttributeDictionary.
	self assert:
		(dictionary namespaceURIOf: 'xml:id') equals:
			XMLNamespaceScope xmlNamespaceURI.
	self
		assert: (dictionary namespaceURIOf: 'prefix:name') equals: 'prefixNS';
		assert: (dictionary namespaceURIOf: 'otherPrefix:name') equals: 'otherPrefixNS';
		assert: (dictionary namespaceURIOf: 'name') equals: ''.