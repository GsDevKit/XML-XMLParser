tests
testvalidvlang01xml
	"Source file: sun/valid/v-lang01.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidvlang01xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidvlang01xml
						documentURI: 'valid/v-lang01.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidoutvlang01xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions