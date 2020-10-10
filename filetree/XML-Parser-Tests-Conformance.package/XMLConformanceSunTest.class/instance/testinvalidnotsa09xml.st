tests - exception raising
testinvalidnotsa09xml
	"Source file: sun/invalid/not-sa09.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidnotsa09xml.
	self
		should: [
			self
				parse: self class sourceinvalidnotsa09xml
				documentURI: 'invalid/not-sa09.xml']
		raise: self parserExceptions