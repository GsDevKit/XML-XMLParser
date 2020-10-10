tests
testvalidsa041xml
	"Source file: xmltest/valid/sa/041.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa041xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa041xml
						documentURI: 'valid/sa/041.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout041xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions