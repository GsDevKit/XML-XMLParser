converting
encodeString: anASCIIString with: aStreamConverter
	^ (XMLEncodingWriteStreamAdapter
		on: String new writeStream
		streamConverter: aStreamConverter)
			nextPutAll: anASCIIString;
			contents