tests
testvalidpe03xml
	"Source file: sun/valid/pe03.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidpe03xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidpe03xml
						documentURI: 'valid/pe03.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidoutpe03xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions