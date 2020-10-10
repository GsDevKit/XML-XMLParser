tests
testvalidnotsa018xml
	"Source file: xmltest/valid/not-sa/018.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa018xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa018xml
						documentURI: 'valid/not-sa/018.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidnotsaout018xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions