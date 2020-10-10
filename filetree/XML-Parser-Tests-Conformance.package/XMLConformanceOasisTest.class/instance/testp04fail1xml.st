tests - exception raising
testp04fail1xml
	"Source file: oasis/p04fail1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp04fail1xml.
	self
		should: [
			self
				parse: self class sourcep04fail1xml
				documentURI: 'p04fail1.xml']
		raise: self parserExceptions