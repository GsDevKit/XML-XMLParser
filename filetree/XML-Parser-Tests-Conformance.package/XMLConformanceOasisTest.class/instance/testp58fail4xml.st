tests - exception raising
testp58fail4xml
	"Source file: oasis/p58fail4.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp58fail4xml.
	self
		should: [
			self
				parse: self class sourcep58fail4xml
				documentURI: 'p58fail4.xml']
		raise: self parserExceptions