tests
testvalidnotsa019xml
	"Source file: xmltest/valid/not-sa/019.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa019xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa019xml
						documentURI: 'valid/not-sa/019.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidnotsaout019xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions