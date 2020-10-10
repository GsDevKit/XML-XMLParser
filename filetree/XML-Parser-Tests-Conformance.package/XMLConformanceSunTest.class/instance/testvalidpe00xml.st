tests
testvalidpe00xml
	"Source file: sun/valid/pe00.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidpe00xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidpe00xml
						documentURI: 'valid/pe00.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidoutpe00xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions