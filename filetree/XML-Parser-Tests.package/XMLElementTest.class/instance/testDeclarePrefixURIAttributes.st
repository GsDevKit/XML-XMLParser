tests
testDeclarePrefixURIAttributes
	| element |

	(element := self newElement)
		attributeAt: 'name'
		put: 'one'.
	element
		attributeAt: 'prefix:name'
		put: 'two'.
	element
		attributeAt: 'prefixTwo:name'
		put: 'three'.
	self
		shouldnt: [
			element
				declarePrefix: 'prefixTwo'
				uri: element defaultNamespace]
		raise: XMLNamespaceException.
	self
		should: [
			element
				declarePrefix: 'prefixTwo'
				uri: (element resolvePrefix: 'prefix')]
		raise: XMLNamespaceException.