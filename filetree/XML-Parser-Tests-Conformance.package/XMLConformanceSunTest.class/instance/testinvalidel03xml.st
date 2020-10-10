tests - exception raising
testinvalidel03xml
	"Source file: sun/invalid/el03.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidel03xml.
	self
		should: [
			self
				parse: self class sourceinvalidel03xml
				documentURI: 'invalid/el03.xml']
		raise: self parserExceptions