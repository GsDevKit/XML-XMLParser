tests - exception raising
testp26fail1xml
	"Source file: oasis/p26fail1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp26fail1xml.
	self
		should: [
			self
				parse: self class sourcep26fail1xml
				documentURI: 'p26fail1.xml']
		raise: self parserExceptions