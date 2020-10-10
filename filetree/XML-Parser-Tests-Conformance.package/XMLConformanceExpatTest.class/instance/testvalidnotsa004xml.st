tests
testvalidnotsa004xml
	"Source file: xmltest/valid/not-sa/004.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa004xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa004xml
						documentURI: 'valid/not-sa/004.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidnotsaout004xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions