tests - exception raising
testp75fail5xml
	"Source file: oasis/p75fail5.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp75fail5xml.
	self
		should: [
			self
				parse: self class sourcep75fail5xml
				documentURI: 'p75fail5.xml']
		raise: self parserExceptions