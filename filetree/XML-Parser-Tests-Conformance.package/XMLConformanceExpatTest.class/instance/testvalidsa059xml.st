tests
testvalidsa059xml
	"Source file: xmltest/valid/sa/059.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa059xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa059xml
						documentURI: 'valid/sa/059.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout059xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions