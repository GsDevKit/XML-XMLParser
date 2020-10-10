accessing
invalidImplicitEncodedInputCollections
	^ self basicInvalidImplicitEncodedInputCollections collect: [:each |
		self asExpectedInput: each]