tests
testvalidvlang02xml
	"Source file: sun/valid/v-lang02.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidvlang02xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidvlang02xml
						documentURI: 'valid/v-lang02.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidoutvlang02xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions