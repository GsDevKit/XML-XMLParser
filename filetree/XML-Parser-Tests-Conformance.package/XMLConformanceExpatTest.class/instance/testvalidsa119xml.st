tests
testvalidsa119xml
	"Source file: xmltest/valid/sa/119.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa119xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa119xml
						documentURI: 'valid/sa/119.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout119xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions