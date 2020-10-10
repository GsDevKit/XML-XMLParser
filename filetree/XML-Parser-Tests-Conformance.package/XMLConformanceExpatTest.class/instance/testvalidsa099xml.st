tests
testvalidsa099xml
	"Source file: xmltest/valid/sa/099.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa099xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa099xml
						documentURI: 'valid/sa/099.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout099xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions