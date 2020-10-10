tests - exception raising
testp02fail10xml
	"Source file: oasis/p02fail10.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp02fail10xml.
	self
		should: [
			self
				parse: self class sourcep02fail10xml
				documentURI: 'p02fail10.xml']
		raise: self parserExceptions