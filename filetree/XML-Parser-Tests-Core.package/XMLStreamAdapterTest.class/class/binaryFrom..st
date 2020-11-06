converting
binaryFrom: aCollection
	aCollection class == ByteArray
		ifTrue: [^ aCollection]
		ifFalse: [
			^ ByteArray streamContents: [:stream |
				aCollection do: [:each |
					stream nextPut: each asInteger]]]