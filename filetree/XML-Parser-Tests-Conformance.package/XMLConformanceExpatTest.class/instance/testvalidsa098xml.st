tests
testvalidsa098xml
	"Source file: xmltest/valid/sa/098.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa098xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa098xml
						documentURI: 'valid/sa/098.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout098xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions