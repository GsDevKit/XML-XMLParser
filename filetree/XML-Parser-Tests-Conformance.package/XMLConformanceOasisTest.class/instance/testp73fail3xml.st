tests - exception raising
testp73fail3xml
	"Source file: oasis/p73fail3.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp73fail3xml.
	self
		should: [
			self
				parse: self class sourcep73fail3xml
				documentURI: 'p73fail3.xml']
		raise: self parserExceptions