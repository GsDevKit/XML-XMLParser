tests
testvalidsa081xml
	"Source file: xmltest/valid/sa/081.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa081xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa081xml
						documentURI: 'valid/sa/081.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout081xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions