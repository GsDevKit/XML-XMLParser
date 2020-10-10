tests
testvalidvlang03xml
	"Source file: sun/valid/v-lang03.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidvlang03xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidvlang03xml
						documentURI: 'valid/v-lang03.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidoutvlang03xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions