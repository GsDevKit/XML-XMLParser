tests
testvalidsgml01xml
	"Source file: sun/valid/sgml01.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsgml01xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsgml01xml
						documentURI: 'valid/sgml01.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidoutsgml01xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions