tests - exception raising
testinvalidnotsa10xml
	"Source file: sun/invalid/not-sa10.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidnotsa10xml.
	self
		should: [
			self
				parse: self class sourceinvalidnotsa10xml
				documentURI: 'invalid/not-sa10.xml']
		raise: self parserExceptions