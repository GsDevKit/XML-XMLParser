tests
testvalidsa047xml
	"Source file: xmltest/valid/sa/047.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa047xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa047xml
						documentURI: 'valid/sa/047.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout047xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions