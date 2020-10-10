tests
testvaliddtd00xml
	"Source file: sun/valid/dtd00.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvaliddtd00xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevaliddtd00xml
						documentURI: 'valid/dtd00.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidoutdtd00xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions