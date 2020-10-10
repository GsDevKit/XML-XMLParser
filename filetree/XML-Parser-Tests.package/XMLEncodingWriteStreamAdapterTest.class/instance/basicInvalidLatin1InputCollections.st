accessing
basicInvalidLatin1InputCollections
	^ self basicInvalidUTFInputCollections,
		(Array
			with: (String with: 16r000100 asCharacter)
			with: (String with: 16r001000 asCharacter)
			with: (String with: 16r010000 asCharacter)
			with: (String with: 16r100000 asCharacter))