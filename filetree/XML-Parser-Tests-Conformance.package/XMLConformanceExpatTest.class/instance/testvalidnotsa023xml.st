tests
testvalidnotsa023xml
	"Source file: xmltest/valid/not-sa/023.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa023xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa023xml
						documentURI: 'valid/not-sa/023.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidnotsaout023xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions