tests - exception raising
testp18fail3xml
	"Source file: oasis/p18fail3.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp18fail3xml.
	self
		should: [
			self
				parse: self class sourcep18fail3xml
				documentURI: 'p18fail3.xml']
		raise: self parserExceptions