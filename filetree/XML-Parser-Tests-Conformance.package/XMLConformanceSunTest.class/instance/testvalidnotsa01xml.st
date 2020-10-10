tests
testvalidnotsa01xml
	"Source file: sun/valid/not-sa01.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa01xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa01xml
						documentURI: 'valid/not-sa01.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidoutnotsa01xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions