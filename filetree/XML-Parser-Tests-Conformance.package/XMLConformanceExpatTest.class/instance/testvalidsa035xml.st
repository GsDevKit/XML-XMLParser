tests
testvalidsa035xml
	"Source file: xmltest/valid/sa/035.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa035xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa035xml
						documentURI: 'valid/sa/035.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout035xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions