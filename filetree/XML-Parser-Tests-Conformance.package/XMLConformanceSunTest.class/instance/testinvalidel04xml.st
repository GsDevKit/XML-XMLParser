tests - exception raising
testinvalidel04xml
	"Source file: sun/invalid/el04.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidel04xml.
	self
		should: [
			self
				parse: self class sourceinvalidel04xml
				documentURI: 'invalid/el04.xml']
		raise: self parserExceptions