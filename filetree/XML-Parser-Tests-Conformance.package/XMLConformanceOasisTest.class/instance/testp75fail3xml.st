tests - exception raising
testp75fail3xml
	"Source file: oasis/p75fail3.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp75fail3xml.
	self
		should: [
			self
				parse: self class sourcep75fail3xml
				documentURI: 'p75fail3.xml']
		raise: self parserExceptions