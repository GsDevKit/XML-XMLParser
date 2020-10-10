tests
testvalidsa079xml
	"Source file: xmltest/valid/sa/079.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa079xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa079xml
						documentURI: 'valid/sa/079.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout079xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions