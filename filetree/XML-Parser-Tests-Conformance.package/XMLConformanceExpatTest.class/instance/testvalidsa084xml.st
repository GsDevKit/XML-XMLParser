tests
testvalidsa084xml
	"Source file: xmltest/valid/sa/084.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa084xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa084xml
						documentURI: 'valid/sa/084.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout084xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions