tests - exception raising
testinvalidattr05xml
	"Source file: sun/invalid/attr05.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidattr05xml.
	self
		should: [
			self
				parse: self class sourceinvalidattr05xml
				documentURI: 'invalid/attr05.xml']
		raise: self parserExceptions