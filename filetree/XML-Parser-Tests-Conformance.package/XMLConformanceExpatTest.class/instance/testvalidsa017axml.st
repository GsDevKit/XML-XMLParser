tests
testvalidsa017axml
	"Source file: xmltest/valid/sa/017a.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa017axml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa017axml
						documentURI: 'valid/sa/017a.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout017axml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions