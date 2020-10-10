tests
testvalidnotsa005xml
	"Source file: xmltest/valid/not-sa/005.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa005xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa005xml
						documentURI: 'valid/not-sa/005.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidnotsaout005xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions