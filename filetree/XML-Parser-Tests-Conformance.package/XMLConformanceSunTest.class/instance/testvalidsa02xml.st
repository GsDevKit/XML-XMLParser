tests
testvalidsa02xml
	"Source file: sun/valid/sa02.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa02xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa02xml
						documentURI: 'valid/sa02.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidoutsa02xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions