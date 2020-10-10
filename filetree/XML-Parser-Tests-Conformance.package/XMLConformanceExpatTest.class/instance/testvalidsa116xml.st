tests
testvalidsa116xml
	"Source file: xmltest/valid/sa/116.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa116xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa116xml
						documentURI: 'valid/sa/116.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout116xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions