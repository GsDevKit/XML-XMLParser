tests
testvalidsa106xml
	"Source file: xmltest/valid/sa/106.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa106xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa106xml
						documentURI: 'valid/sa/106.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout106xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions