entity replacing
addPushedBackEntity: aPushedBackEntity
	(self hasPushedBackEntity: aPushedBackEntity)
		ifTrue: [self errorSelfReferentialEntity: aPushedBackEntity].

	self maxEntityReplacementDepth
		ifNotNil: [:maxDepth |
			self pushedBackEntities size >= maxDepth
				ifTrue: [self errorEntityDepthLimitExceeded]].
	
	self pushedBackEntities addLast: aPushedBackEntity.
	driver currentEntity: aPushedBackEntity entity.
	aPushedBackEntity isExternal
		ifTrue: [driver baseURI: aPushedBackEntity uri].

	^ aPushedBackEntity.