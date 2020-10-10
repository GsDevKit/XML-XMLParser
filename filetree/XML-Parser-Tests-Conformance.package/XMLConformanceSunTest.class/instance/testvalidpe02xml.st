tests
testvalidpe02xml
	"Source file: sun/valid/pe02.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidpe02xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidpe02xml
						documentURI: 'valid/pe02.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidoutpe02xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions