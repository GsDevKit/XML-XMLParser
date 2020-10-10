tests
testvalidnotsa011xml
	"Source file: xmltest/valid/not-sa/011.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa011xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa011xml
						documentURI: 'valid/not-sa/011.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidnotsaout011xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions