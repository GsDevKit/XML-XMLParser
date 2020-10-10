tests
testvalidnotsa021xml
	"Source file: xmltest/valid/not-sa/021.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa021xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa021xml
						documentURI: 'valid/not-sa/021.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidnotsaout021xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions