tests
testvalidnotsa001xml
	"Source file: xmltest/valid/not-sa/001.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa001xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa001xml
						documentURI: 'valid/not-sa/001.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidnotsaout001xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions