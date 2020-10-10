tests - exception raising
testinvalidnotsa04xml
	"Source file: sun/invalid/not-sa04.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidnotsa04xml.
	self
		should: [
			self
				parse: self class sourceinvalidnotsa04xml
				documentURI: 'invalid/not-sa04.xml']
		raise: self parserExceptions