tests
testvalidnotsa008xml
	"Source file: xmltest/valid/not-sa/008.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa008xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa008xml
						documentURI: 'valid/not-sa/008.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidnotsaout008xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions