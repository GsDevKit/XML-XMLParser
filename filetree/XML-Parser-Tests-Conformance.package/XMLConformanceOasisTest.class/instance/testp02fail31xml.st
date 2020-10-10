tests - exception raising
testp02fail31xml
	"Source file: oasis/p02fail31.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp02fail31xml.
	self
		should: [
			self
				parse: self class sourcep02fail31xml
				documentURI: 'p02fail31.xml']
		raise: self parserExceptions