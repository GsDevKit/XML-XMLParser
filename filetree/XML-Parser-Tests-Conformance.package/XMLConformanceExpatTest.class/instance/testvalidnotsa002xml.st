tests
testvalidnotsa002xml
	"Source file: xmltest/valid/not-sa/002.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa002xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa002xml
						documentURI: 'valid/not-sa/002.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidnotsaout002xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions