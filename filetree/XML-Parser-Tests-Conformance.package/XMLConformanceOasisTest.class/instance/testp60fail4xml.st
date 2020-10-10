tests - exception raising
testp60fail4xml
	"Source file: oasis/p60fail4.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp60fail4xml.
	self
		should: [
			self
				parse: self class sourcep60fail4xml
				documentURI: 'p60fail4.xml']
		raise: self parserExceptions