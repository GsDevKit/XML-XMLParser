tests - exception raising
testinvalidattr04xml
	"Source file: sun/invalid/attr04.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidattr04xml.
	self
		should: [
			self
				parse: self class sourceinvalidattr04xml
				documentURI: 'invalid/attr04.xml']
		raise: self parserExceptions