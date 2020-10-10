tests - exception raising
testp02fail13xml
	"Source file: oasis/p02fail13.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp02fail13xml.
	self
		should: [
			self
				parse: self class sourcep02fail13xml
				documentURI: 'p02fail13.xml']
		raise: self parserExceptions