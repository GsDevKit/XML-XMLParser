tests - exception raising
testp74fail1xml
	"Source file: oasis/p74fail1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp74fail1xml.
	self
		should: [
			self
				parse: self class sourcep74fail1xml
				documentURI: 'p74fail1.xml']
		raise: self parserExceptions