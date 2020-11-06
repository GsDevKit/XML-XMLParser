converting
asciiToUTF16LE: anASCIIString
	^ self
		encodeString: anASCIIString
		with: XMLUTF16LittleEndianStreamConverter new