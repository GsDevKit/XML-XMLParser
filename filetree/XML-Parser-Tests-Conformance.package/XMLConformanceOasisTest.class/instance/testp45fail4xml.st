tests - exception raising
testp45fail4xml
	"Source file: oasis/p45fail4.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp45fail4xml.
	self
		should: [
			self
				parse: self class sourcep45fail4xml
				documentURI: 'p45fail4.xml']
		raise: self parserExceptions