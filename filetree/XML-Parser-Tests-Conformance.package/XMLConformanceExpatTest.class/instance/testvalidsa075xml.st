tests
testvalidsa075xml
	"Source file: xmltest/valid/sa/075.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa075xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa075xml
						documentURI: 'valid/sa/075.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout075xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions