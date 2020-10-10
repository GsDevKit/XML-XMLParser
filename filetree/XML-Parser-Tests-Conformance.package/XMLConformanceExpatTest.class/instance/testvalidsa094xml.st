tests
testvalidsa094xml
	"Source file: xmltest/valid/sa/094.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa094xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa094xml
						documentURI: 'valid/sa/094.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout094xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions