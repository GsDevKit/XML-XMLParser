tests
testvalidsa080xml
	"Source file: xmltest/valid/sa/080.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa080xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa080xml
						documentURI: 'valid/sa/080.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout080xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions