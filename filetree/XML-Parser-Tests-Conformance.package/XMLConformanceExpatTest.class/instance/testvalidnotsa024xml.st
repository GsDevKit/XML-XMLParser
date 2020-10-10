tests
testvalidnotsa024xml
	"Source file: xmltest/valid/not-sa/024.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa024xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa024xml
						documentURI: 'valid/not-sa/024.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidnotsaout024xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions