tests
testvalidsa111xml
	"Source file: xmltest/valid/sa/111.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa111xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa111xml
						documentURI: 'valid/sa/111.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout111xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions