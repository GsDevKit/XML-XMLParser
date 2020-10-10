tests
testExternalSubsetReadLimit
	| resolver |
	resolver := self newResolver.
	self
		assert: resolver externalSubsetReadLimit
		equals: DTDExternalEntityLimits defaultExternalSubsetReadLimit.
	self
		assert: (resolver externalSubsetReadLimit: 1000000) == resolver;
		assert: resolver externalSubsetReadLimit equals: 1000000;
		assert: (resolver externalSubsetReadLimit: nil) == resolver;
		assert: resolver externalSubsetReadLimit isNil