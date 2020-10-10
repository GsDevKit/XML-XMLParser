tests
testvalidoptionalxml
	"Source file: sun/valid/optional.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidoptionalxml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidoptionalxml
						documentURI: 'valid/optional.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidoutoptionalxml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions