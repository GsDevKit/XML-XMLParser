tests - exception raising
testinvalidattr13xml
	"Source file: sun/invalid/attr13.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidattr13xml.
	self
		should: [
			self
				parse: self class sourceinvalidattr13xml
				documentURI: 'invalid/attr13.xml']
		raise: self parserExceptions