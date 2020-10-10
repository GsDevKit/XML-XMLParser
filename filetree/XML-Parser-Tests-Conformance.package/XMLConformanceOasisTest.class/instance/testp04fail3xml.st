tests - exception raising
testp04fail3xml
	"Source file: oasis/p04fail3.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp04fail3xml.
	self
		should: [
			self
				parse: self class sourcep04fail3xml
				documentURI: 'p04fail3.xml']
		raise: self parserExceptions