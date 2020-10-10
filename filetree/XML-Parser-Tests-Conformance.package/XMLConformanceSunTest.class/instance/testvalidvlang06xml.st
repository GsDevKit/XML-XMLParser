tests
testvalidvlang06xml
	"Source file: sun/valid/v-lang06.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidvlang06xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidvlang06xml
						documentURI: 'valid/v-lang06.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidoutvlang06xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions