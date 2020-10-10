converting
asExpectedInput: aCollection
	^ self expectsBinaryInput
		ifTrue: [self binaryFrom: aCollection]
		ifFalse: [self stringFrom: aCollection]