tests
testvalidsa071xml
	"Source file: xmltest/valid/sa/071.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa071xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa071xml
						documentURI: 'valid/sa/071.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout071xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions