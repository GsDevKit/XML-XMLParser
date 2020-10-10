tests
testvalidsa091xml
	"Source file: xmltest/valid/sa/091.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa091xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa091xml
						documentURI: 'valid/sa/091.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout091xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions