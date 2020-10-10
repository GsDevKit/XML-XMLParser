tests
testvalidsa076xml
	"Source file: xmltest/valid/sa/076.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa076xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa076xml
						documentURI: 'valid/sa/076.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout076xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions