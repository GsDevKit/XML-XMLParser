tests
testValidateAndResolvePrefixOfElement
	| scope |

	scope := self newNamespaceScope.
	self namespaces keysAndValuesDo: [:prefix :uri | | element |
		element := 'name' qualifyWithXMLPrefix: prefix.
		prefix
			ifNotEmpty: [
				self
					should: [
						scope
							validateAndResolvePrefix: prefix
							ofElement: element]
					raise: XMLNamespaceException].
		scope
			mapPrefix: prefix
			to: uri.
		self assert:
			(scope
				validateAndResolvePrefix: prefix
				ofElement: element) = uri].

	self assert:
		(scope
			validateAndResolvePrefix: 'xml'
			ofElement: ('name' qualifyWithXMLPrefix: 'xml')) =
				scope xmlNamespaceURI.
	"cannot use 'xmlns' as an element prefix either"
	self
		should: [
			scope
				validateAndResolvePrefix: 'xmlns'
				ofElement: ('name' qualifyWithXMLPrefix: 'xmlns')]
		raise: XMLNamespaceException.
	self
		should: [
			scope
				validateAndResolvePrefix: ''
				ofElement: ':name']
		raise: XMLNamespaceException.