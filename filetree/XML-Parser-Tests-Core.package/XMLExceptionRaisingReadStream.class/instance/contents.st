accessing
contents
	stream atEnd
		ifTrue: [self errorAtEndStreamCannotBeSent: #contents].
	^ stream contents.