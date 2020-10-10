tests
testvalidvlang05xml
	"Source file: sun/valid/v-lang05.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidvlang05xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidvlang05xml
						documentURI: 'valid/v-lang05.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidoutvlang05xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions