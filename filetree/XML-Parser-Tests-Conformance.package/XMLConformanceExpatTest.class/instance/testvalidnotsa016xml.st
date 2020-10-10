tests
testvalidnotsa016xml
	"Source file: xmltest/valid/not-sa/016.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa016xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa016xml
						documentURI: 'valid/not-sa/016.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidnotsaout016xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions