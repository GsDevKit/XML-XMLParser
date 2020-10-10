accessing
ignorableParserExceptions
	^ ignorableParserExceptions
		ifNil: [ignorableParserExceptions := self class ignorableParserExceptions]