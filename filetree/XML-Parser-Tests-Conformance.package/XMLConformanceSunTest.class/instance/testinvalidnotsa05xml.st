tests - exception raising
testinvalidnotsa05xml
	"Source file: sun/invalid/not-sa05.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidnotsa05xml.
	self
		should: [
			self
				parse: self class sourceinvalidnotsa05xml
				documentURI: 'invalid/not-sa05.xml']
		raise: self parserExceptions