tests
testvalidsa005xml
	"Source file: xmltest/valid/sa/005.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa005xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa005xml
						documentURI: 'valid/sa/005.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout005xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions