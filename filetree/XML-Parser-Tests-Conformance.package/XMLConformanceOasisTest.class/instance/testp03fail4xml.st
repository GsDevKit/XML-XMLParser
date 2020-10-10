tests - exception raising
testp03fail4xml
	"Source file: oasis/p03fail4.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp03fail4xml.
	self
		should: [
			self
				parse: self class sourcep03fail4xml
				documentURI: 'p03fail4.xml']
		raise: self parserExceptions