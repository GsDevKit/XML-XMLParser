tests
testRawReadStream
	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testRawReadStream.

	self tempFileManager newFileHandleDo: [:fileHandle | | readStream |
		self
			should: [fileHandle rawReadStream]
			raise: XMLFileException.

		self tempFileManager createFileWithContentsForHandle: fileHandle.
		readStream := fileHandle rawReadStream.
		self
			deny: readStream isXMLConvertingStreamAdapter;
			assertIsEncodedFileContentsWithBOM: readStream upToEnd.
		readStream close].