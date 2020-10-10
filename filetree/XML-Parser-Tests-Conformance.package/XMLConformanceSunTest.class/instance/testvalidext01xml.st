tests
testvalidext01xml
	"Source file: sun/valid/ext01.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidext01xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidext01xml
						documentURI: 'valid/ext01.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidoutext01xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions