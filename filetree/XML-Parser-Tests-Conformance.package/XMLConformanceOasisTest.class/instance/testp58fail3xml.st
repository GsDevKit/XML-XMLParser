tests - exception raising
testp58fail3xml
	"Source file: oasis/p58fail3.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp58fail3xml.
	self
		should: [
			self
				parse: self class sourcep58fail3xml
				documentURI: 'p58fail3.xml']
		raise: self parserExceptions