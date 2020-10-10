tests
testvalidnotsa026xml
	"Source file: xmltest/valid/not-sa/026.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa026xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa026xml
						documentURI: 'valid/not-sa/026.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidnotsaout026xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions