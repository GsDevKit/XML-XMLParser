tests
testvalidsa024xml
	"Source file: xmltest/valid/sa/024.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa024xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa024xml
						documentURI: 'valid/sa/024.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout024xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions