asserting
assertIsEncodedFileContentsWithBOM: aCollection
	^ self assert:
		aCollection asByteArray =
			self encodedFileContentsWithByteOrderMark asByteArray