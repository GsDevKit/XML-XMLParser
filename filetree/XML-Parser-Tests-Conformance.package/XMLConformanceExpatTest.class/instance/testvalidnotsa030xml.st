tests
testvalidnotsa030xml
	"Source file: xmltest/valid/not-sa/030.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa030xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa030xml
						documentURI: 'valid/not-sa/030.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidnotsaout030xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions