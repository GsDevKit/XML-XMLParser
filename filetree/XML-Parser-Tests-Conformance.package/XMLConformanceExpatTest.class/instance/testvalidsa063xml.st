tests
testvalidsa063xml
	"Source file: xmltest/valid/sa/063.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa063xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa063xml
						documentURI: 'valid/sa/063.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout063xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions