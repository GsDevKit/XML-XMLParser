tests - exception raising
testinvalidattr02xml
	"Source file: sun/invalid/attr02.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidattr02xml.
	self
		should: [
			self
				parse: self class sourceinvalidattr02xml
				documentURI: 'invalid/attr02.xml']
		raise: self parserExceptions