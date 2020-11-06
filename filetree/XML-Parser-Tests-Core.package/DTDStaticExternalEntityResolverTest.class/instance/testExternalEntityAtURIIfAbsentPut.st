tests
testExternalEntityAtURIIfAbsentPut
	| resolver |
	self isTestingLimiting
		ifTrue: [ ^ self ].
	resolver := self newResolver.
	self
		entityURIStringsAndReplacementsDo: [ :uriString :replacement | 
			self
				assert: (resolver externalEntityAtURI: uriString ifAbsentPut: [ replacement ])
				equals: replacement.
			self
				assert: (resolver externalEntityAtURI: uriString)
				equals: replacement.
			self
				assert:
					(resolver
						externalEntityAtURI: uriString asXMLURI
						ifAbsentPut: [ self fail ])
				equals: replacement.
			self
				assert: (resolver externalEntityAtURI: uriString)
				equals: replacement ]