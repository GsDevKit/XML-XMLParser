tests
testvalidsa103xml
	"Source file: xmltest/valid/sa/103.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa103xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa103xml
						documentURI: 'valid/sa/103.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout103xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions