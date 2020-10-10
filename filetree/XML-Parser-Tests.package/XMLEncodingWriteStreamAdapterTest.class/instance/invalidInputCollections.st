accessing
invalidInputCollections
	^ self basicInvalidInputCollections collect: [:each |
		self asExpectedInput: each]