tests - exception raising
testp02fail24xml
	"Source file: oasis/p02fail24.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp02fail24xml.
	self
		should: [
			self
				parse: self class sourcep02fail24xml
				documentURI: 'p02fail24.xml']
		raise: self parserExceptions