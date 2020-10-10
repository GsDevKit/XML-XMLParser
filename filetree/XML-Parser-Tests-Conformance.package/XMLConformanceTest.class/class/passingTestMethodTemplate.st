method templates
passingTestMethodTemplate
	^ '{1}
	"Source file: {2}"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #{1}.
	self
		shouldnt: [
			[self
				parse: self class {3}
				documentURI: ''{4}'']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions'