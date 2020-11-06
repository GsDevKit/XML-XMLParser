asserting
assertIsDecodedFileContents: aCollection
	self
		assert: aCollection isString;
		assert: aCollection = self decodedFileContents