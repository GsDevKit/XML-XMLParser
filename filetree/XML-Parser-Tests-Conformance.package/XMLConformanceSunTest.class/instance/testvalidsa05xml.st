tests
testvalidsa05xml
	"Source file: sun/valid/sa05.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa05xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa05xml
						documentURI: 'valid/sa05.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidoutsa05xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions