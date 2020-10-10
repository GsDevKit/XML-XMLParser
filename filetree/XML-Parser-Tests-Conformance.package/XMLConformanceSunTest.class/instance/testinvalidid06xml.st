tests - exception raising
testinvalidid06xml
	"Source file: sun/invalid/id06.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidid06xml.
	self
		should: [
			self
				parse: self class sourceinvalidid06xml
				documentURI: 'invalid/id06.xml']
		raise: self parserExceptions