tests
testvalidnotsa031xml
	"Source file: xmltest/valid/not-sa/031.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa031xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa031xml
						documentURI: 'valid/not-sa/031.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidnotsaout031xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions