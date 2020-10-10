accessing
encodedFileContentsWithByteOrderMark
	^ (self streamConverterClass byteOrderMarkBytes, self encodedFileContents)
		asByteArray