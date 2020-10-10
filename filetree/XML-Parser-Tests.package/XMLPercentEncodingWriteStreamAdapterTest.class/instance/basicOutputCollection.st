accessing
basicOutputCollection
	^ String streamContents: [:stream |
		super basicOutputCollection do: [:each |
			stream nextPutAll:
				(self class percentEncodeCharacter: each)]]