tests
testvalidnotsa027xml
	"Source file: xmltest/valid/not-sa/027.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa027xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa027xml
						documentURI: 'valid/not-sa/027.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidnotsaout027xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions