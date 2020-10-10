tests
testvalidnotsa003xml
	"Source file: xmltest/valid/not-sa/003.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa003xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa003xml
						documentURI: 'valid/not-sa/003.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidnotsaout003xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions