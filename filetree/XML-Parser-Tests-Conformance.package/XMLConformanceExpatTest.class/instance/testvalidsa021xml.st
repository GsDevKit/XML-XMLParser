tests
testvalidsa021xml
	"Source file: xmltest/valid/sa/021.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa021xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa021xml
						documentURI: 'valid/sa/021.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout021xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions