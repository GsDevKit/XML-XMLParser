tests
testvalidelementxml
	"Source file: sun/valid/element.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidelementxml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidelementxml
						documentURI: 'valid/element.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidoutelementxml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions