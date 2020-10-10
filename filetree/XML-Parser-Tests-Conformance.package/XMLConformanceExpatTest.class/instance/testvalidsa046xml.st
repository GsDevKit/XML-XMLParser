tests
testvalidsa046xml
	"Source file: xmltest/valid/sa/046.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa046xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa046xml
						documentURI: 'valid/sa/046.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout046xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions