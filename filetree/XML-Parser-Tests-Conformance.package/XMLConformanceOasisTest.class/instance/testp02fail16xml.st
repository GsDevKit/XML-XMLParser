tests - exception raising
testp02fail16xml
	"Source file: oasis/p02fail16.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp02fail16xml.
	self
		should: [
			self
				parse: self class sourcep02fail16xml
				documentURI: 'p02fail16.xml']
		raise: self parserExceptions