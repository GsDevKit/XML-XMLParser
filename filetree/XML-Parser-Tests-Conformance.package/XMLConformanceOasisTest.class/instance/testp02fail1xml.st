tests - exception raising
testp02fail1xml
	"Source file: oasis/p02fail1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp02fail1xml.
	self
		should: [
			self
				parse: self class sourcep02fail1xml
				documentURI: 'p02fail1.xml']
		raise: self parserExceptions