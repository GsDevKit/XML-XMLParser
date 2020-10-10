tests
testvalidnotsa015xml
	"Source file: xmltest/valid/not-sa/015.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa015xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa015xml
						documentURI: 'valid/not-sa/015.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidnotsaout015xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions