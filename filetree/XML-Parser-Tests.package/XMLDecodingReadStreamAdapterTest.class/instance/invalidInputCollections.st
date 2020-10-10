accessing
invalidInputCollections
	^ self basicInvalidInputCollections collect: [:each |
		self detectsBOMs
			ifTrue: [self inputCollectionByteOrderMark, (self asExpectedInput: each)]
			ifFalse: [self asExpectedInput: each]]