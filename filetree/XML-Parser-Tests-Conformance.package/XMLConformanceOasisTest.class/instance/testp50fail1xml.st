tests - exception raising
testp50fail1xml
	"Source file: oasis/p50fail1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp50fail1xml.
	self
		should: [
			self
				parse: self class sourcep50fail1xml
				documentURI: 'p50fail1.xml']
		raise: self parserExceptions