tests - exception raising
testp02fail5xml
	"Source file: oasis/p02fail5.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp02fail5xml.
	self
		should: [
			self
				parse: self class sourcep02fail5xml
				documentURI: 'p02fail5.xml']
		raise: self parserExceptions