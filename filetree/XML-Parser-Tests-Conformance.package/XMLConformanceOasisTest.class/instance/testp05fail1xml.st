tests - exception raising
testp05fail1xml
	"Source file: oasis/p05fail1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp05fail1xml.
	self
		should: [
			self
				parse: self class sourcep05fail1xml
				documentURI: 'p05fail1.xml']
		raise: self parserExceptions