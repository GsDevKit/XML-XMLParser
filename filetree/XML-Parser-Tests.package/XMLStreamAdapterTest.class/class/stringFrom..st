converting
stringFrom: aCollection
	aCollection isString
		ifTrue: [^ aCollection]
		ifFalse: [
			"avoid #asString for GS portability"
			^ String streamContents: [:stream |
				aCollection do: [:each |
					stream nextPut: each asCharacter]]]