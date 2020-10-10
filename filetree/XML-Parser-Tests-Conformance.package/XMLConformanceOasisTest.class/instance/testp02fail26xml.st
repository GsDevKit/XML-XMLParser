tests - exception raising
testp02fail26xml
	"Source file: oasis/p02fail26.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp02fail26xml.
	self
		should: [
			self
				parse: self class sourcep02fail26xml
				documentURI: 'p02fail26.xml']
		raise: self parserExceptions