converting
asExpectedOutput: aCollection
	^ self expectsBinaryOutput
		ifTrue: [self binaryFrom: aCollection]
		ifFalse: [self stringFrom: aCollection]