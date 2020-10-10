tests - exception raising
testp56fail3xml
	"Source file: oasis/p56fail3.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp56fail3xml.
	self
		should: [
			self
				parse: self class sourcep56fail3xml
				documentURI: 'p56fail3.xml']
		raise: self parserExceptions