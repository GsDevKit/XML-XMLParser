tests
testvalidnotsa017xml
	"Source file: xmltest/valid/not-sa/017.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa017xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa017xml
						documentURI: 'valid/not-sa/017.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidnotsaout017xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions