tests
testvalidsa053xml
	"Source file: xmltest/valid/sa/053.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa053xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa053xml
						documentURI: 'valid/sa/053.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout053xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions