tests - exception raising
testp32fail4xml
	"Source file: oasis/p32fail4.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp32fail4xml.
	self
		should: [
			self
				parse: self class sourcep32fail4xml
				documentURI: 'p32fail4.xml']
		raise: self parserExceptions