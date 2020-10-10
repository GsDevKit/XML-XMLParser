tests
testvalidsa03xml
	"Source file: sun/valid/sa03.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa03xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa03xml
						documentURI: 'valid/sa03.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidoutsa03xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions