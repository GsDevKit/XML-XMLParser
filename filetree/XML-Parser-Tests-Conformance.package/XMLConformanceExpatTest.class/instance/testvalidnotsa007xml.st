tests
testvalidnotsa007xml
	"Source file: xmltest/valid/not-sa/007.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa007xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa007xml
						documentURI: 'valid/not-sa/007.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidnotsaout007xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions