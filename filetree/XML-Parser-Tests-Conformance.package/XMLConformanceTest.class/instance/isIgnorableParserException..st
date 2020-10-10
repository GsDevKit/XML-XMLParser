testing
isIgnorableParserException: anError
	^ self ignorableParserExceptions notNil
		and: [self ignorableParserExceptions handles: anError]