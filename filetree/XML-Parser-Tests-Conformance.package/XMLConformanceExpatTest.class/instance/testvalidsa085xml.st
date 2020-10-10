tests
testvalidsa085xml
	"Source file: xmltest/valid/sa/085.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa085xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa085xml
						documentURI: 'valid/sa/085.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout085xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions