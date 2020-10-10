tests
testvalidvlang04xml
	"Source file: sun/valid/v-lang04.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidvlang04xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidvlang04xml
						documentURI: 'valid/v-lang04.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidoutvlang04xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions