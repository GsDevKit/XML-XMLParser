tests - exception raising
testp74fail3xml
	"Source file: oasis/p74fail3.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp74fail3xml.
	self
		should: [
			self
				parse: self class sourcep74fail3xml
				documentURI: 'p74fail3.xml']
		raise: self parserExceptions