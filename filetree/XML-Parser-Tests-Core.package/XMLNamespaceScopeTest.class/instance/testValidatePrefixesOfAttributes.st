tests
testValidatePrefixesOfAttributes
	| scope attributes |

	scope := self newNamespaceScopeWithNamespaces.
	attributes :=
		self namespaces keys collect: [:each |
			'name' qualifyWithXMLPrefix: each].
	self
		shouldnt: [
			scope validatePrefixesOfAttributes: attributes]
		raise: XMLNamespaceException.
	self
		should: [
			scope validatePrefixesOfAttributes:
				(attributes copyWith: ('name' qualifyWithXMLPrefix: 'undeclared'))]
		raise: XMLNamespaceException.
	self
		should: [
			scope validatePrefixesOfAttributes:
				(attributes copyWith: ':name')]
		raise: XMLNamespaceException.

	self namespaces keysAndValuesDo: [:prefix :uri | | aliasPrefix attribute |
		aliasPrefix := 'alias', prefix.
		scope
			mapPrefix: aliasPrefix
			to: uri.
		attribute := 'name' qualifyWithXMLPrefix: aliasPrefix.
		prefix = ''
			ifTrue: [
				self
					shouldnt: [
						scope validatePrefixesOfAttributes:
							(attributes copyWith: attribute)]
					raise: XMLNamespaceException]
			ifFalse: [
				self
					should: [
						scope validatePrefixesOfAttributes:
							(attributes copyWith: attribute)]
					raise: XMLNamespaceException]].