tests - exception raising
testp73fail5xml
	"Source file: oasis/p73fail5.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp73fail5xml.
	self
		should: [
			self
				parse: self class sourcep73fail5xml
				documentURI: 'p73fail5.xml']
		raise: self parserExceptions