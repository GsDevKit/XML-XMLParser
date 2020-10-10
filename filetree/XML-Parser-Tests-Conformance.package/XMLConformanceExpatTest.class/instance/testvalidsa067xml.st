tests
testvalidsa067xml
	"Source file: xmltest/valid/sa/067.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa067xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa067xml
						documentURI: 'valid/sa/067.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout067xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions