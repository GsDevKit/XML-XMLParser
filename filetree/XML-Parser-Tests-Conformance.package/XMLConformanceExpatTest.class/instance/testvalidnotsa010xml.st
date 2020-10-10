tests
testvalidnotsa010xml
	"Source file: xmltest/valid/not-sa/010.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa010xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa010xml
						documentURI: 'valid/not-sa/010.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidnotsaout010xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions