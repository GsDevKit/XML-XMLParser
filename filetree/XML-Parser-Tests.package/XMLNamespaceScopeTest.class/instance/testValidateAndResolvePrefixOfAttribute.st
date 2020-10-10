tests
testValidateAndResolvePrefixOfAttribute
	| scope |

	scope := self newNamespaceScope.
	self namespaces keysAndValuesDo: [:prefix :uri | | attribute |
		attribute := 'name' qualifyWithXMLPrefix: prefix.
		"unprefixed attributes have no namespace URI"
		prefix
			ifEmpty: [
				scope
					mapPrefix: prefix
					to: uri.
				self assert:
					(scope
						validateAndResolvePrefix: prefix
						ofAttribute: attribute) = '']
			ifNotEmpty: [
				self
					should: [
						scope
							validateAndResolvePrefix: prefix
							ofAttribute: attribute]
					raise: XMLNamespaceException.
				scope
					mapPrefix: prefix
					to: uri.
				self assert:
					(scope
						validateAndResolvePrefix: prefix
						ofAttribute: attribute) = uri]].

	self assert:
		(scope
			validateAndResolvePrefix: 'xml'
			ofAttribute: ('name' qualifyWithXMLPrefix: 'xml')) =
				scope xmlNamespaceURI.
	"cannot use 'xmlns' as an attribute prefix, since it is reserved for
	namespace declarations"
	self
		should: [
			scope
				validateAndResolvePrefix: 'xmlns'
				ofAttribute: ('name' qualifyWithXMLPrefix: 'xmlns')]
		raise: XMLNamespaceException.
	self
		should: [
			scope
				validateAndResolvePrefix: ''
				ofAttribute: ':name']
		raise: XMLNamespaceException.