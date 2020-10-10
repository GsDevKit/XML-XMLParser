tests
testvalidnotsa014xml
	"Source file: xmltest/valid/not-sa/014.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa014xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa014xml
						documentURI: 'valid/not-sa/014.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidnotsaout014xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions