tests - exception raising
testp02fail3xml
	"Source file: oasis/p02fail3.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp02fail3xml.
	self
		should: [
			self
				parse: self class sourcep02fail3xml
				documentURI: 'p02fail3.xml']
		raise: self parserExceptions