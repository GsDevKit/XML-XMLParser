tests
testvalidsa022xml
	"Source file: xmltest/valid/sa/022.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa022xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa022xml
						documentURI: 'valid/sa/022.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout022xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions