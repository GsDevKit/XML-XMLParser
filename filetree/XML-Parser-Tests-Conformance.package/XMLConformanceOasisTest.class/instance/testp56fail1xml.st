tests - exception raising
testp56fail1xml
	"Source file: oasis/p56fail1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp56fail1xml.
	self
		should: [
			self
				parse: self class sourcep56fail1xml
				documentURI: 'p56fail1.xml']
		raise: self parserExceptions