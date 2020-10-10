converting
asciiToUTF32LE: anASCIIString
	^ self
		encodeString: anASCIIString
		with: XMLUTF32LittleEndianStreamConverter new