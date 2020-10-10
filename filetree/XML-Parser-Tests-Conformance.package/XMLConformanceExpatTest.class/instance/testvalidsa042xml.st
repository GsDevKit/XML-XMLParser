tests
testvalidsa042xml
	"Source file: xmltest/valid/sa/042.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa042xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa042xml
						documentURI: 'valid/sa/042.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout042xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions