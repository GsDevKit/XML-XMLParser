converting
asciiToUTF32BE: anASCIIString
	^ self
		encodeString: anASCIIString
		with: XMLUTF32BigEndianStreamConverter new