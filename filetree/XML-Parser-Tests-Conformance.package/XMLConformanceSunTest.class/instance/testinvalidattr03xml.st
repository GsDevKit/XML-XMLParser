tests - exception raising
testinvalidattr03xml
	"Source file: sun/invalid/attr03.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidattr03xml.
	self
		should: [
			self
				parse: self class sourceinvalidattr03xml
				documentURI: 'invalid/attr03.xml']
		raise: self parserExceptions