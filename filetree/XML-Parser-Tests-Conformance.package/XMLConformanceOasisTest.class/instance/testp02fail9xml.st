tests - exception raising
testp02fail9xml
	"Source file: oasis/p02fail9.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp02fail9xml.
	self
		should: [
			self
				parse: self class sourcep02fail9xml
				documentURI: 'p02fail9.xml']
		raise: self parserExceptions