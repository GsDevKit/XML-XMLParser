tests
testvalidsa028xml
	"Source file: xmltest/valid/sa/028.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa028xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa028xml
						documentURI: 'valid/sa/028.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout028xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions