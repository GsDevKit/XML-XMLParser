tests
testvalidsa001xml
	"Source file: xmltest/valid/sa/001.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa001xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa001xml
						documentURI: 'valid/sa/001.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout001xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions