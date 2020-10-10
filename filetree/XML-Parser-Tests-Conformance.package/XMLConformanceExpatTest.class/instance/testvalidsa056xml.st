tests
testvalidsa056xml
	"Source file: xmltest/valid/sa/056.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa056xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa056xml
						documentURI: 'valid/sa/056.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout056xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions