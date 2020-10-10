tests
testvalidsa062xml
	"Source file: xmltest/valid/sa/062.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa062xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa062xml
						documentURI: 'valid/sa/062.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout062xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions