tests - exception raising
testp02fail28xml
	"Source file: oasis/p02fail28.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp02fail28xml.
	self
		should: [
			self
				parse: self class sourcep02fail28xml
				documentURI: 'p02fail28.xml']
		raise: self parserExceptions