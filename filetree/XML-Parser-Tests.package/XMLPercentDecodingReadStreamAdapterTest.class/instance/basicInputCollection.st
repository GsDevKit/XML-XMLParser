accessing
basicInputCollection
	^ String streamContents: [:stream |
		super basicInputCollection do: [:each |
			stream nextPutAll:
				(self class percentEncodeCharacter: each)]]