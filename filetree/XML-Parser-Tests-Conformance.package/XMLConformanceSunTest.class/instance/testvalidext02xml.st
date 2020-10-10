tests
testvalidext02xml
	"Source file: sun/valid/ext02.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidext02xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidext02xml
						documentURI: 'valid/ext02.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidoutext02xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions