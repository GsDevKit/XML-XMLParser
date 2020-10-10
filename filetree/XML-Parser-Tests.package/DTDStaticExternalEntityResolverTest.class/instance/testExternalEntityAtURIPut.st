tests
testExternalEntityAtURIPut
	| resolver |
	self isTestingLimiting
		ifTrue: [ ^ self ].
	resolver := self newResolver.
	self
		entityURIStringsAndReplacementsDo: [ :uriString :replacement | 
			self
				assert: (resolver externalEntityAtURI: uriString put: replacement)
				equals: replacement.
			self
				assert: (resolver externalEntityAtURI: uriString)
				equals: replacement.
			self
				assert:
					(resolver
						externalEntityAtURI: uriString asXMLURI
						put: self newEntityReplacement)
				equals: self newEntityReplacement.
			self
				assert: (resolver externalEntityAtURI: uriString asXMLURI)
				equals: self newEntityReplacement ]