tests
testvalidsa033xml
	"Source file: xmltest/valid/sa/033.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa033xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa033xml
						documentURI: 'valid/sa/033.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout033xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions