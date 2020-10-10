tests
testvalidsa117xml
	"Source file: xmltest/valid/sa/117.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa117xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa117xml
						documentURI: 'valid/sa/117.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout117xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions