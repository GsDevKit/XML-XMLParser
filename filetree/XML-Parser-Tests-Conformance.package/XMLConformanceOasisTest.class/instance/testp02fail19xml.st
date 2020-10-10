tests - exception raising
testp02fail19xml
	"Source file: oasis/p02fail19.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp02fail19xml.
	self
		should: [
			self
				parse: self class sourcep02fail19xml
				documentURI: 'p02fail19.xml']
		raise: self parserExceptions