tests
testvalidsa050xml
	"Source file: xmltest/valid/sa/050.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa050xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa050xml
						documentURI: 'valid/sa/050.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout050xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions