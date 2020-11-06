accessing
inputCollection
	^ self detectsBOMs
		ifTrue: [self inputCollectionByteOrderMark, super inputCollection]
		ifFalse: [super inputCollection]