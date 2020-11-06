accessing
basicInvalidInputCollections
	^ (16r80 to: 16rFF) asArray collect: [:each | ByteArray with: each]