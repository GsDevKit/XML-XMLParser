tests
testvalidsa018xml
	"Source file: xmltest/valid/sa/018.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa018xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa018xml
						documentURI: 'valid/sa/018.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout018xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions