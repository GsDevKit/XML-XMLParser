converting
contentsFromCharacter: aCharacter
	^ self asExpectedOutput:
		(ByteArray streamContents: [:stream |
			self streamConverterClass new
				nextPut: aCharacter
				toStream: stream])