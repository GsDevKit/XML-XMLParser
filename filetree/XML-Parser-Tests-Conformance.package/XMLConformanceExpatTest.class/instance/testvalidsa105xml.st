tests
testvalidsa105xml
	"Source file: xmltest/valid/sa/105.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa105xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa105xml
						documentURI: 'valid/sa/105.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout105xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions