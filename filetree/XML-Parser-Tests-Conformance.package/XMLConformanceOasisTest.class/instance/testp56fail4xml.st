tests - exception raising
testp56fail4xml
	"Source file: oasis/p56fail4.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp56fail4xml.
	self
		should: [
			self
				parse: self class sourcep56fail4xml
				documentURI: 'p56fail4.xml']
		raise: self parserExceptions