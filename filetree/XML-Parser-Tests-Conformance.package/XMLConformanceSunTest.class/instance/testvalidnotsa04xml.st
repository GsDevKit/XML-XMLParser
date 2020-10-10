tests
testvalidnotsa04xml
	"Source file: sun/valid/not-sa04.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa04xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa04xml
						documentURI: 'valid/not-sa04.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidoutnotsa04xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions