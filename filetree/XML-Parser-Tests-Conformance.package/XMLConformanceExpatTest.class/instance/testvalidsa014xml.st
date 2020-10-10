tests
testvalidsa014xml
	"Source file: xmltest/valid/sa/014.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa014xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa014xml
						documentURI: 'valid/sa/014.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout014xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions