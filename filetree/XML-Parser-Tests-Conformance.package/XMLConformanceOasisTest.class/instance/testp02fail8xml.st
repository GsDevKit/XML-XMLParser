tests - exception raising
testp02fail8xml
	"Source file: oasis/p02fail8.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp02fail8xml.
	self
		should: [
			self
				parse: self class sourcep02fail8xml
				documentURI: 'p02fail8.xml']
		raise: self parserExceptions