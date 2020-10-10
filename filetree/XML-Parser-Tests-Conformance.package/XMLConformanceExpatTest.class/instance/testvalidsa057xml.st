tests
testvalidsa057xml
	"Source file: xmltest/valid/sa/057.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa057xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa057xml
						documentURI: 'valid/sa/057.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout057xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions