tests
testvalidsa011xml
	"Source file: xmltest/valid/sa/011.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa011xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa011xml
						documentURI: 'valid/sa/011.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout011xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions