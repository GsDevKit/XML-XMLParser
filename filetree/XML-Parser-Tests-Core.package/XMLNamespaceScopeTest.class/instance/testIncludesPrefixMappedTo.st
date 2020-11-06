tests
testIncludesPrefixMappedTo
	| scope |

	scope := self newNamespaceScope.
	"these are not mapped by default, but are still resolvable"
	self deny:
		(scope
			includesPrefix: 'xml'
			mappedTo: scope xmlNamespaceURI).
	self deny:
		(scope
			includesPrefix: 'xmlns'
			mappedTo: scope xmlnsNamespaceURI).

	"cannot map xmlns prefix, but can map xml"
	scope
		mapPrefix: 'xml'
		to: scope xmlNamespaceURI.
	self assert:
		(scope
			includesPrefix: 'xml'
			mappedTo: scope xmlNamespaceURI).

	self namespaces keysAndValuesDo: [:prefix :uri |
		self deny:
			(scope
				includesPrefix: prefix
				mappedTo: uri).
		scope
			mapPrefix: prefix
			to: uri.
		self assert:
			(scope
				includesPrefix: prefix
				mappedTo: uri)].