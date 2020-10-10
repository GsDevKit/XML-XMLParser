tests
testvalidnotsa03xml
	"Source file: sun/valid/not-sa03.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa03xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa03xml
						documentURI: 'valid/not-sa03.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidoutnotsa03xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions