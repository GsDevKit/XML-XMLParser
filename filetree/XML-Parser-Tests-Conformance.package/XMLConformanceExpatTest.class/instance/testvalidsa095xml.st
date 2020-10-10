tests
testvalidsa095xml
	"Source file: xmltest/valid/sa/095.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa095xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa095xml
						documentURI: 'valid/sa/095.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout095xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions