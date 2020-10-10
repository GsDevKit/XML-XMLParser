tests
testvalidsa055xml
	"Source file: xmltest/valid/sa/055.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa055xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa055xml
						documentURI: 'valid/sa/055.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout055xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions