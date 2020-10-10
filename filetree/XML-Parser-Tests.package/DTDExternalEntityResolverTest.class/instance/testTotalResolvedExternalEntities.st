tests
testTotalResolvedExternalEntities
	| resolver |
	self isTestingLimiting
		ifFalse: [ ^ self ].
	resolver := self newResolver.
	self assert: resolver totalResolvedExternalEntities equals: 0.
	resolver incrementTotalResolvedExternalEntities.
	self assert: resolver totalResolvedExternalEntities equals: 1.
	self
		assert:
			(self newResolver
				incrementTotalResolvedExternalEntities;
				totalResolvedExternalEntities)
		equals: 1