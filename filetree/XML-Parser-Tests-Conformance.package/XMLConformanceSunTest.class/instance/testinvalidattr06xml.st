tests - exception raising
testinvalidattr06xml
	"Source file: sun/invalid/attr06.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidattr06xml.
	self
		should: [
			self
				parse: self class sourceinvalidattr06xml
				documentURI: 'invalid/attr06.xml']
		raise: self parserExceptions