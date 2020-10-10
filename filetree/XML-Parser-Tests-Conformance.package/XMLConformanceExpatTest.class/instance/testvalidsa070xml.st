tests
testvalidsa070xml
	"Source file: xmltest/valid/sa/070.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa070xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa070xml
						documentURI: 'valid/sa/070.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout070xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions