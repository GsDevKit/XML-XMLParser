tests - exception raising
testp27fail1xml
	"Source file: oasis/p27fail1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp27fail1xml.
	self
		should: [
			self
				parse: self class sourcep27fail1xml
				documentURI: 'p27fail1.xml']
		raise: self parserExceptions