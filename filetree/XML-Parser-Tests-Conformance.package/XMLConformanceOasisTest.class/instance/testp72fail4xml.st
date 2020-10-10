tests - exception raising
testp72fail4xml
	"Source file: oasis/p72fail4.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp72fail4xml.
	self
		should: [
			self
				parse: self class sourcep72fail4xml
				documentURI: 'p72fail4.xml']
		raise: self parserExceptions