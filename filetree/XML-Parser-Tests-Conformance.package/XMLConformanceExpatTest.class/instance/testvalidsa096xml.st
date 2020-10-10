tests
testvalidsa096xml
	"Source file: xmltest/valid/sa/096.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa096xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa096xml
						documentURI: 'valid/sa/096.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout096xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions