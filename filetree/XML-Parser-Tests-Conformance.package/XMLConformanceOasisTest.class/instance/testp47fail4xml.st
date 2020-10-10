tests - exception raising
testp47fail4xml
	"Source file: oasis/p47fail4.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp47fail4xml.
	self
		should: [
			self
				parse: self class sourcep47fail4xml
				documentURI: 'p47fail4.xml']
		raise: self parserExceptions