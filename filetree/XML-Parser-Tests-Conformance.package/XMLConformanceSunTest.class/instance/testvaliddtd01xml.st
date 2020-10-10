tests
testvaliddtd01xml
	"Source file: sun/valid/dtd01.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvaliddtd01xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevaliddtd01xml
						documentURI: 'valid/dtd01.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidoutdtd01xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions