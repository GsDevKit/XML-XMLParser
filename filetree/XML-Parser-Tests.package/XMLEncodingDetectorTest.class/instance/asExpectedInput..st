converting
asExpectedInput: anInputCollections
	^ self detectsBinaryInput
		ifTrue: [XMLStreamAdapterTest binaryFrom: anInputCollections]
		ifFalse: [XMLStreamAdapterTest stringFrom: anInputCollections]