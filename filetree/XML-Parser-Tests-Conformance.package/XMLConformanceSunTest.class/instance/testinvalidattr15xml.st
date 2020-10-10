tests - exception raising
testinvalidattr15xml
	"Source file: sun/invalid/attr15.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidattr15xml.
	self
		should: [
			self
				parse: self class sourceinvalidattr15xml
				documentURI: 'invalid/attr15.xml']
		raise: self parserExceptions