tests
testvalidsa060xml
	"Source file: xmltest/valid/sa/060.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa060xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa060xml
						documentURI: 'valid/sa/060.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout060xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions