tests
testvalidsa082xml
	"Source file: xmltest/valid/sa/082.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa082xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa082xml
						documentURI: 'valid/sa/082.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout082xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions