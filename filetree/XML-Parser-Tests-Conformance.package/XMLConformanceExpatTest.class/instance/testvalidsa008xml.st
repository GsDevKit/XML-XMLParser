tests
testvalidsa008xml
	"Source file: xmltest/valid/sa/008.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa008xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa008xml
						documentURI: 'valid/sa/008.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout008xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions