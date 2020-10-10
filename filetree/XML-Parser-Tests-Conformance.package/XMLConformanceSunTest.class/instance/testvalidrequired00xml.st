tests
testvalidrequired00xml
	"Source file: sun/valid/required00.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidrequired00xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidrequired00xml
						documentURI: 'valid/required00.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidoutrequired00xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions