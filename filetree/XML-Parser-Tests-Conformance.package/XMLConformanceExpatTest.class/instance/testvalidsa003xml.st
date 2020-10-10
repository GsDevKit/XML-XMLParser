tests
testvalidsa003xml
	"Source file: xmltest/valid/sa/003.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa003xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa003xml
						documentURI: 'valid/sa/003.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout003xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions