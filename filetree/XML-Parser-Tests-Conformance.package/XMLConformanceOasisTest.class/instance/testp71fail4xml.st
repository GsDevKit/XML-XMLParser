tests - exception raising
testp71fail4xml
	"Source file: oasis/p71fail4.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp71fail4xml.
	self
		should: [
			self
				parse: self class sourcep71fail4xml
				documentURI: 'p71fail4.xml']
		raise: self parserExceptions