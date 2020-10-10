tests
testvalidsa026xml
	"Source file: xmltest/valid/sa/026.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa026xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa026xml
						documentURI: 'valid/sa/026.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout026xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions