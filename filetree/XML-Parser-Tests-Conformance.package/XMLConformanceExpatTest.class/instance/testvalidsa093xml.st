tests
testvalidsa093xml
	"Source file: xmltest/valid/sa/093.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa093xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa093xml
						documentURI: 'valid/sa/093.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout093xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions