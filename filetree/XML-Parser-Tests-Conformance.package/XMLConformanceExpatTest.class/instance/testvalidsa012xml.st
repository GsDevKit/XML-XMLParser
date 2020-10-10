tests
testvalidsa012xml
	"Source file: xmltest/valid/sa/012.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa012xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa012xml
						documentURI: 'valid/sa/012.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout012xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions