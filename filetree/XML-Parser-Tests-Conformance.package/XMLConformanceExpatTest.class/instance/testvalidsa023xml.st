tests
testvalidsa023xml
	"Source file: xmltest/valid/sa/023.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa023xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa023xml
						documentURI: 'valid/sa/023.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout023xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions