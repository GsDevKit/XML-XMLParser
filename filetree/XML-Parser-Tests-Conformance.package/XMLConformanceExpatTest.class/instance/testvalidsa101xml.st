tests
testvalidsa101xml
	"Source file: xmltest/valid/sa/101.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa101xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa101xml
						documentURI: 'valid/sa/101.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout101xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions