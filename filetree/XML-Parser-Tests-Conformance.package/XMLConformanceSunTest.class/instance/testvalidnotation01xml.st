tests
testvalidnotation01xml
	"Source file: sun/valid/notation01.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotation01xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotation01xml
						documentURI: 'valid/notation01.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidoutnotation01xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions