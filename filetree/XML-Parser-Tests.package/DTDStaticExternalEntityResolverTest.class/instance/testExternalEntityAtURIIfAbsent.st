tests
testExternalEntityAtURIIfAbsent
	| resolver |
	self isTestingLimiting
		ifTrue: [ ^ self ].
	resolver := self newResolver.
	self
		entityURIStringsAndReplacementsDo: [ :uriString :replacement | 
			self
				assert: (resolver externalEntityAtURI: uriString ifAbsent: [ #absent ])
				equals: #absent.
			self
				assert:
					(resolver
						externalEntityAtURI: uriString asXMLURI
						ifAbsent: [ #absent ])
				equals: #absent.
			resolver externalEntityAtURI: uriString put: replacement.
			self
				assert: (resolver externalEntityAtURI: uriString ifAbsent: [ self fail ])
				equals: replacement.
			self
				assert:
					(resolver
						externalEntityAtURI: uriString asXMLURI
						ifAbsent: [ self fail ])
				equals: replacement ]