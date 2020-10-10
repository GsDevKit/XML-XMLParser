tests
testvalidsa044xml
	"Source file: xmltest/valid/sa/044.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa044xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa044xml
						documentURI: 'valid/sa/044.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout044xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions