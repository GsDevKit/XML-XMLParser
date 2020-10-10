tests
testvalidsa058xml
	"Source file: xmltest/valid/sa/058.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa058xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa058xml
						documentURI: 'valid/sa/058.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout058xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions