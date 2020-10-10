tests
testvalidsa037xml
	"Source file: xmltest/valid/sa/037.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa037xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa037xml
						documentURI: 'valid/sa/037.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout037xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions