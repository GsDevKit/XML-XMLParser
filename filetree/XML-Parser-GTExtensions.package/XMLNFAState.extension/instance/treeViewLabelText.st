*XML-Parser-GTExtensions
treeViewLabelText
	^ (String streamContents: [:stream |
		stream
			nextPutAll: self class name asString;
			nextPut: $(.
		self printLabelOn: stream.
		stream nextPut: $)]) asText