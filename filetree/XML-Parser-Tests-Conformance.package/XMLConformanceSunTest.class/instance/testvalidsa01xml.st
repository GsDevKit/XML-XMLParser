tests
testvalidsa01xml
	"Source file: sun/valid/sa01.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa01xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa01xml
						documentURI: 'valid/sa01.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidoutsa01xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions