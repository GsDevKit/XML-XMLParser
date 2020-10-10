tests
testvalidsa090xml
	"Source file: xmltest/valid/sa/090.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa090xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa090xml
						documentURI: 'valid/sa/090.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout090xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions