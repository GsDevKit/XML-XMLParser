tests - exception raising
testp02fail15xml
	"Source file: oasis/p02fail15.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp02fail15xml.
	self
		should: [
			self
				parse: self class sourcep02fail15xml
				documentURI: 'p02fail15.xml']
		raise: self parserExceptions