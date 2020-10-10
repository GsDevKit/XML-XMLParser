tests
testvalidsa007xml
	"Source file: xmltest/valid/sa/007.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa007xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa007xml
						documentURI: 'valid/sa/007.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout007xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions