tests - exception raising
testp71fail3xml
	"Source file: oasis/p71fail3.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp71fail3xml.
	self
		should: [
			self
				parse: self class sourcep71fail3xml
				documentURI: 'p71fail3.xml']
		raise: self parserExceptions