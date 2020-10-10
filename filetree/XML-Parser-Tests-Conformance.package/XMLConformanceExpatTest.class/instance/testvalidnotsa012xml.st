tests
testvalidnotsa012xml
	"Source file: xmltest/valid/not-sa/012.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa012xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa012xml
						documentURI: 'valid/not-sa/012.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidnotsaout012xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions