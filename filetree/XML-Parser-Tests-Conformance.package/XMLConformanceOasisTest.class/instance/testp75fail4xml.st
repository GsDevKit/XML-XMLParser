tests - exception raising
testp75fail4xml
	"Source file: oasis/p75fail4.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp75fail4xml.
	self
		should: [
			self
				parse: self class sourcep75fail4xml
				documentURI: 'p75fail4.xml']
		raise: self parserExceptions