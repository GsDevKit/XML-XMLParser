accessing
explicitEncodedInputCollections
	^ self implicitEncodedInputCollections collect: [:each |
		self inputCollectionByteOrderMark, each]