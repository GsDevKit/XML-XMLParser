accessing
implicitEncodedInputCollections
	^ self basicImplicitEncodedInputCollections collect: [:each |
		self asExpectedInput: each]