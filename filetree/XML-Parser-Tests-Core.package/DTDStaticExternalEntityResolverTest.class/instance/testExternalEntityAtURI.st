tests
testExternalEntityAtURI
	| resolver |
	self isTestingLimiting
		ifTrue: [ ^ self ].
	resolver := self newResolver.
	self
		entityURIStringsAndReplacementsDo: [ :uriString :replacement | 
			self
				assert: (resolver externalEntityAtURI: uriString) equals: '';
				assert: (resolver externalEntityAtURI: uriString asXMLURI)
					equals: ''.
			resolver externalEntityAtURI: uriString put: replacement.
			self
				assert: (resolver externalEntityAtURI: uriString)
					equals: replacement;
				assert: (resolver externalEntityAtURI: uriString asXMLURI)
					equals: replacement ]