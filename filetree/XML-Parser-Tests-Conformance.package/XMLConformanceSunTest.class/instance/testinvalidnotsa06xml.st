tests - exception raising
testinvalidnotsa06xml
	"Source file: sun/invalid/not-sa06.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidnotsa06xml.
	self
		should: [
			self
				parse: self class sourceinvalidnotsa06xml
				documentURI: 'invalid/not-sa06.xml']
		raise: self parserExceptions