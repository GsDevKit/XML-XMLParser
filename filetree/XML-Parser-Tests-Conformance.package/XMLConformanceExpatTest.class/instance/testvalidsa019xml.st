tests
testvalidsa019xml
	"Source file: xmltest/valid/sa/019.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa019xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa019xml
						documentURI: 'valid/sa/019.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout019xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions