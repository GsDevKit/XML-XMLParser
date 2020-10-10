tests
testMaxExternalEntitySize
	| resolver |
	resolver := self newResolver.
	self
		assert: resolver maxExternalEntitySize
		equals: DTDExternalEntityLimits defaultMaxExternalEntitySize.
	self
		assert: (resolver maxExternalEntitySize: 10000) == resolver;
		assert: resolver maxExternalEntitySize equals: 10000;
		assert: (resolver maxExternalEntitySize: nil) == resolver;
		assert: resolver maxExternalEntitySize isNil