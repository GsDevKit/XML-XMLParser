accessing
streamCollection
	^ self expectsBinaryOutput
		ifTrue: [ByteArray new]
		ifFalse: [String new]