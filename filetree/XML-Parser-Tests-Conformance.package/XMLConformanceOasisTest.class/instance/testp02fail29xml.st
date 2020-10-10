tests - exception raising
testp02fail29xml
	"Source file: oasis/p02fail29.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp02fail29xml.
	self
		should: [
			self
				parse: self class sourcep02fail29xml
				documentURI: 'p02fail29.xml']
		raise: self parserExceptions