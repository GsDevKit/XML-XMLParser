tests - exception raising
testinvalidemptyxml
	"Source file: sun/invalid/empty.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidemptyxml.
	self
		should: [
			self
				parse: self class sourceinvalidemptyxml
				documentURI: 'invalid/empty.xml']
		raise: self parserExceptions