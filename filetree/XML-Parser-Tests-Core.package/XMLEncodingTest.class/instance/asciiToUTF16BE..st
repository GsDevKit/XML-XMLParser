converting
asciiToUTF16BE: anASCIIString
	^ self
		encodeString: anASCIIString
		with: XMLUTF16BigEndianStreamConverter new