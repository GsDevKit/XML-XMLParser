tests
testvalidsa069xml
	"Source file: xmltest/valid/sa/069.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa069xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa069xml
						documentURI: 'valid/sa/069.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout069xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions