tests
testvalidsa031xml
	"Source file: xmltest/valid/sa/031.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa031xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa031xml
						documentURI: 'valid/sa/031.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout031xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions