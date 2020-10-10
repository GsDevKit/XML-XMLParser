tests
testvalidsa078xml
	"Source file: xmltest/valid/sa/078.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa078xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa078xml
						documentURI: 'valid/sa/078.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout078xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions