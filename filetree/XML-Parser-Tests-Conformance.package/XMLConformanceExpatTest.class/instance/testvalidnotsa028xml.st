tests
testvalidnotsa028xml
	"Source file: xmltest/valid/not-sa/028.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa028xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa028xml
						documentURI: 'valid/not-sa/028.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidnotsaout028xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions