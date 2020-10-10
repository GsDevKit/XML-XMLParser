tests
testvalidsa045xml
	"Source file: xmltest/valid/sa/045.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa045xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa045xml
						documentURI: 'valid/sa/045.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout045xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions