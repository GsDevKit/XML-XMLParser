tests
testGetUpToLimitDecoding
	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testGetUpToLimitDecoding.

	self tempFileManager newFileHandleDo: [:fileHandle |
		self
			should: [
				fileHandle
					getUpToLimit: nil
					decoding: true]
			raise: XMLFileException.

		self tempFileManager createFileWithContentsForHandle: fileHandle.

		self assertIsDecodedFileContents:
			(fileHandle
				getUpToLimit: nil
				decoding: true).
		self assertIsEncodedFileContentsWithBOM:
			(fileHandle
				getUpToLimit: nil
				decoding: false).

		self assertIsDecodedFileContents:
			(fileHandle
				getUpToLimit: self encodedFileContentsWithByteOrderMark size
				decoding: true).
		self assertIsEncodedFileContentsWithBOM:
			(fileHandle
				getUpToLimit: self encodedFileContentsWithByteOrderMark size
				decoding: false).

		self
			should: [
				fileHandle
					getUpToLimit: self encodedFileContentsWithByteOrderMark size - 1
					decoding: true]
			raise: XMLLimitException.
		self
			should: [
				fileHandle
					getUpToLimit: self encodedFileContentsWithByteOrderMark size - 1
					decoding: false]
			raise: XMLLimitException].