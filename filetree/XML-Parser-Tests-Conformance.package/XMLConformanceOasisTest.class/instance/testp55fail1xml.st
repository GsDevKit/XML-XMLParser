tests - exception raising
testp55fail1xml
	"Source file: oasis/p55fail1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp55fail1xml.
	self
		should: [
			self
				parse: self class sourcep55fail1xml
				documentURI: 'p55fail1.xml']
		raise: self parserExceptions