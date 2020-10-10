tests
testvalidsa017xml
	"Source file: xmltest/valid/sa/017.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa017xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa017xml
						documentURI: 'valid/sa/017.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout017xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions