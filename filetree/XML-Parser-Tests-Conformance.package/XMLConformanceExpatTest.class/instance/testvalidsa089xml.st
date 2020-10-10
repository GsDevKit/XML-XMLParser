tests
testvalidsa089xml
	"Source file: xmltest/valid/sa/089.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa089xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa089xml
						documentURI: 'valid/sa/089.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout089xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions