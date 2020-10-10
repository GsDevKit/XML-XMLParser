tests
testvalidsa038xml
	"Source file: xmltest/valid/sa/038.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa038xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa038xml
						documentURI: 'valid/sa/038.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout038xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions