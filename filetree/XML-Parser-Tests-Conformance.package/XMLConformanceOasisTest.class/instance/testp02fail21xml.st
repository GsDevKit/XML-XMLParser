tests - exception raising
testp02fail21xml
	"Source file: oasis/p02fail21.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp02fail21xml.
	self
		should: [
			self
				parse: self class sourcep02fail21xml
				documentURI: 'p02fail21.xml']
		raise: self parserExceptions