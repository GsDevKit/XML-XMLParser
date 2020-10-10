tests - exception raising
testp40fail3xml
	"Source file: oasis/p40fail3.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp40fail3xml.
	self
		should: [
			self
				parse: self class sourcep40fail3xml
				documentURI: 'p40fail3.xml']
		raise: self parserExceptions