tests
testvalidsa04xml
	"Source file: sun/valid/sa04.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa04xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa04xml
						documentURI: 'valid/sa04.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidoutsa04xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions