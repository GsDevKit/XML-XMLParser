tests - exception raising
testp73fail4xml
	"Source file: oasis/p73fail4.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp73fail4xml.
	self
		should: [
			self
				parse: self class sourcep73fail4xml
				documentURI: 'p73fail4.xml']
		raise: self parserExceptions