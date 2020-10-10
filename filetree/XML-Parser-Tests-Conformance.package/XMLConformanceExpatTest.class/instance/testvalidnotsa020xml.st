tests
testvalidnotsa020xml
	"Source file: xmltest/valid/not-sa/020.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa020xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa020xml
						documentURI: 'valid/not-sa/020.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidnotsaout020xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions