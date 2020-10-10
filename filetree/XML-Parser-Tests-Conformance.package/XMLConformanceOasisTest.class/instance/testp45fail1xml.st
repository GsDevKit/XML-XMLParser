tests - exception raising
testp45fail1xml
	"Source file: oasis/p45fail1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp45fail1xml.
	self
		should: [
			self
				parse: self class sourcep45fail1xml
				documentURI: 'p45fail1.xml']
		raise: self parserExceptions