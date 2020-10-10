tests
testvalidnotsa013xml
	"Source file: xmltest/valid/not-sa/013.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa013xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa013xml
						documentURI: 'valid/not-sa/013.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidnotsaout013xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions