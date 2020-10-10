tests
testvalidnotsa02xml
	"Source file: sun/valid/not-sa02.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa02xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa02xml
						documentURI: 'valid/not-sa02.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidoutnotsa02xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions