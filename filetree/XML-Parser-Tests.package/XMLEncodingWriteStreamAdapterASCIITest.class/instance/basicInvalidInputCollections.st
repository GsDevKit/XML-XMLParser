accessing
basicInvalidInputCollections
	^ self basicInvalidLatin1InputCollections,
		((16r80 to: 16rFF) asArray collect: [:each |
			String with: each asCharacter])